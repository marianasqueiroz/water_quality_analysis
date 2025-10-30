-- Verify the quantity of solids that are related to hardness potential
SELECT 
    ROUND(Hardness, -1) AS faixa_dureza,
    ROUND(AVG(Solids),2) AS media_solidos
FROM water_quality
GROUP BY ROUND(Hardness, -1)
ORDER BY faixa_dureza desc;


