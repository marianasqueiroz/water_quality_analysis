-- Check for null values
select
	count(*) filter (where ph is null) as ph_nulls,
	count(*) filter (where Hardness is null) as Hardness_nulls,
	count(*) filter (where Solids is null) as Solids_nulls,
	count(*) filter (where Chloramines is null) as Chloramines_nulls,
	count(*) filter (where Sulfate is null) as Sulfate_nulls,
	count(*) filter (where Conductivity is null) as Conductivity_nulls,
	count(*) filter (where Organic_carbon is null) as Organic_carbon_nulls,
	count(*) filter (where Turbidy is null) as Turbidy_nulls,
	count(*) filter (where Trihalomethanes is null) as Trihalomethanes_nulls,
	count(*) filter (where Potability is null) as Potability_nulls
from water_quality
