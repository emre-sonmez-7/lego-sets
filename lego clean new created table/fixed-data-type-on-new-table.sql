CREATE TABLE lego_clean AS
SELECT
    name,
    CAST(NULLIF(year, '') AS INTEGER)            AS year,
    CAST(NULLIF(pieces, '') AS INTEGER)          AS pieces,
    CAST(NULLIF(US_retailPrice, '') AS REAL)     AS price_usd
FROM lego_sets;