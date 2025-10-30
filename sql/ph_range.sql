-- Verify if water within the pH range of 6.8 to 7.2 is potable.
select 
	CASE
		when ph < 6.7 then 'Acid'
		when ph between 6.8 and 7.2 then 'Neutral (Ideal)'
		else 'Basic'
	END AS ph_range,
	Round(Avg(Potability)*100,1) as potability_rate
from water_quality
Where ph is not null
Group by ph_range
Order by potability_rate

