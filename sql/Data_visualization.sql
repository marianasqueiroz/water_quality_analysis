-- Data visualization
SELECT * FROM water_quality
-- Entendendo os dados da amostra de agua
select 
	count (*) as total_amostras,
	round(avg(ph),2) as media_ph,
	round(avg(Hardness),2) as media_Hardness,
	round(avg(Solids),2) as media_Solids,
	round(avg(Chloramines),2) as media_Chloramines,
	round(avg(Sulfate),2) as media_Sulfate,
	round(avg(Conductivity),2) as media_Conductivity,
	round(avg(Organic_carbon),2) as media_Organic_carbon,
	round(avg(Turbidy),2) as media_Turbidy,
	round(avg(Trihalomethanes),2) as media_Trihalomethanes,
	round(avg(Potability),2) as media_Potability
from water_quality;
	

	