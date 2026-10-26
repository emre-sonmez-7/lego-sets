SELECT name,year,pieces,price_usd, ROUND(price_usd/pieces,4) AS "avg unit price" FROM lego_clean

--50 ve üstü parça sayıları dikkate alındı, çünkü çok az parçalı setler parça-fiyat ilişkisi için gerçekçi veri sunmuyor. belli bir sayının üstündeki setler için parça-fiyat ilişkisi kurmaya çalışıyorum
--2005 öncesi çok az set olduğundan 2005 ve sonrası dikkate alınmıştır
WHERE price_usd IS NOT NULL AND pieces IS NOT NULL AND pieces>50 AND year >= 2005