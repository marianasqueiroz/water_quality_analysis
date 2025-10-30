select * from water_quality

select 
	CASE
		when conductivity between 100 and 300 then 'Low Conductivity'
		when conductivity between 300 and 700 then 'Medium Conductivity'
		when conductivity >  700 then 'High Conductivity'
	end as conductivity_range,
	Count(*) as quantidade_amostras,
	round(Avg(conductivity), 2) as media_conductivity
from water_quality
where conductivity is not null
group by conductivity_range
order by media_conductivity 






