SELECT name,year,pieces,price_usd, ROUND(price_usd/pieces,4) AS "avg unit price" FROM lego_clean

--50 ve üstü parça sayıları dikkate alındı, çünkü çok az parçalı setler parça-fiyat ilişkisi için gerçekçi veri sunmuyor. belli bir sayının üstündeki setler için parça-fiyat ilişkisi kurmaya çalışıyorum
WHERE price_usd IS NOT NULL AND pieces IS NOT NULL AND pieces>50