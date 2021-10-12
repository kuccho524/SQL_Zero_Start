/*
Shohinテーブルにある商品を販売単価によって分類する
・低額商品：1,000円以下
・中額商品：1,001円以上3000以下
・高額商品：3,001円以上
*/

/*
各価格帯ごとに商品を分類する => CASE文
各価格帯それぞれの数を合計する => SUM
trueの時は1、flseの時は0をカウントする。
ASを使って各価格帯の列名を命名する。
*/

-- hanbai_tankaが1,000円以下の時、low_priceとする
SELECT SUM(CASE WHEN hanbai_tanka <= 1000 THEN 1 ELSE 0 END) AS low_price, -- CASE文のためWHENがいる。また、trueの時は1、falseの時は0をカウントする

-- hanbai_tankaが1,001円以上3,000以下の時、mid_priceとする
SUM(CASE WHEN hanbai_tanka BETWEEN 1001 AND 3000 THEN 1 ELSE 0 END) AS mid_price, -- ～以上の～以下の条件を指定する時はBETWEENが使用できる

-- hanbai_tankaが3,001円以上の時、high_priceとする
SUM(CASE WHEN hanbai_tanka >= 3001 THEN 1 ELSE 0 END) AS high_price FROM Shohin; 