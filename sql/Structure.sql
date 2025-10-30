--Estruturando a tabela
CREATE TABLE water_quality (
    id SERIAL PRIMARY KEY,
	ph DECIMAL,
    Hardness DECIMAL,
    Solids DECIMAL,
    Chloramines DECIMAL,
    Sulfate DECIMAL,
    Conductivity DECIMAL,
    Organic_carbon DECIMAL,
	Turbidy DECIMAL,
    Trihalomethanes DECIMAL,
    Potability INT
);
