/*
販売単価の合計が仕入単価の合計の1.5倍より大きい商品分類を求めるSELECT文
*/

/*
商品分類ごとに出力 = GROUP BY
上記のグループで以下の出力条件を定めるため、HAVINGが必要
販売単価の合計が仕入単価の合計の1.5倍より大きい
*/

SELECT shohin_bunrui, SUM(hanbai_tanka) AS sum, SUM(shiire_tanka) AS sum FROM Shohin GROUP BY shohin_bunrui HAVING SUM(hanbai_tanka) > SUM(shiire_tanka) * 1.5;