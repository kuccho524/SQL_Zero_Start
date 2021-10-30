/*
以下の条件ごとにShohinテーブルを表示する
・販売単価が1000円以下を低額商品
・販売単価が1001円～3000円を中額商品
・販売単価が3000円より高いものを高額商品
上記カテゴリ別の合計を求める
*/

-- 条件ごとに求める = CASE文
SELECT SUM(CASE WHEN hanbai_tanka <= 1000 THEN 1 ELSE 0 END) AS low_price,
SUM(CASE WHEN hanbai_tanka BETWEEN 1001 AND 3000 THEN 1 ELSE 0 END) AS mid_price,
SUM(CASE WHEN hanbai_tanka > 3000 THEN 1 ELSE 0 END) AS high_price FROM Shohin;