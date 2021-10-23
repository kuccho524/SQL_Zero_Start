/*
Shohinテーブルから以下の条件を出力する
・低額商品：販売単価が1000円以下
・中額商品：販売単価が1001円以上3000円以下
・高額商品：販売単価が3001円以上
上記各ランクの商品数
*/

--各条件で分類するため、CASE文を使用する
SELECT SUM(CASE WHEN hanbai_tanka >= 1000 THEN 1 ELSE 0 END) AS low_price,
SUM(CASE WHEN hanbai_tanka BETWEEN 1001 AND 3000 THEN 1 ELSE 0 END) AS mid_price,
SUM(CASE WHEN hanbai_tanka >= 3001 THEN 1 ELSE 0 END) AS high_price FROM Shohin;