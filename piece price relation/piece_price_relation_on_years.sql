-- ANA ANALİZ (ort_set_basina): Her setin parça başı fiyatı (price_usd / pieces) hesaplanır,
-- ardından yıllık ortalaması alınır. Her set eşit ağırlıktadır.
-- KONTROL ANALİZİ (toplam_orani): Yıllık toplam fiyat / toplam parça.
-- Amaç: Ana Analiz'in uç değerlere duyarlılığını kontrol etmek. İki ortalama aynı yönde hareket ediyorsa bulgu sağlam kabul edilir, ayrışıyorsa nedeni araştırılır.
-- Filtreler: price_usd null değil, pieces > 50, year >= 2005.




SELECT
    year,
    COUNT(*) AS set_sayisi,
    ROUND(AVG(price_usd / pieces), 4) AS ort_set_basina,
    ROUND(SUM(price_usd) / SUM(pieces), 4) AS ort_toplam_orani
FROM lego_clean
WHERE price_usd IS NOT NULL
  AND pieces > 50
  AND year >= 2005
GROUP BY year
ORDER BY year;