/*
販売単価の合計が仕入単価の合計の1.5倍より大きい商品を求め、商品分類ごとに表示させる
*/

SELECT shohin_bunrui, SUM(hanbai_tanka), SUM(shiire_tanka) FROM Shohin GROUP BY shohin_bunrui HAVING SUM(hanbai_tanka) > SUM(shiire_tanka) * 1.5;


-- ～ごとに表示 = GROUP BY句を使用する
-- グループごとに条件を設定をする場合は、HAVING句を使用する