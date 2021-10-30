/*
商品テーブルから商品ID、商品名、商品分類、販売単価、商品分類ごとの販売単価平均を表示する
*/

SELECT shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, (AVG(S2.hanbai_tanka) FROM Shohin AS S2 WHERE S2.shohin_bunrui = S1.shohin_bunrui) FROM Shohin AS S1;

-- 相関サブクエリを使用して商品分類ごとの販売単価平均を求めている