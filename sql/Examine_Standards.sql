-- Examine some standards
SELECT 
    CASE 
        WHEN Conductivity < 300 THEN 'Baixa condutividade'
        WHEN Conductivity BETWEEN 300 AND 600 THEN 'Média'
        ELSE 'Alta'
    END AS faixa_condutividade,
    CASE 
        WHEN Solids < 10000 THEN 'Baixo teor de sólidos'
        WHEN Solids BETWEEN 10000 AND 20000 THEN 'Médio'
        ELSE 'Alto'
    END AS faixa_solidos,
    ROUND(AVG(Potability)*100,1) AS potabilidade_media
FROM water_quality
GROUP BY faixa_condutividade, faixa_solidos
ORDER BY potabilidade_media DESC;


