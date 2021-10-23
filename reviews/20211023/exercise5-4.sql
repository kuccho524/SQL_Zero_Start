/*
商品分類ごとの販売単価平均(avg_hanbai_tanka)を表示し、shohin_id, shohin_mei, shohin_bunrui, hanbai_tankaを含める
*/

/*
商品分類ごとの販売単価平均(avg_hanbai_tanka)を表示するために相関サブクエリを使用する
(SELECT AVG(hanbai_tanka) ・・・ FROM テーブル名 別名 WHERE・・・)
*/

SELECT shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, (SELECT AVG(hanbai_tanka) FROM Shohin S2 WHERE S1.shohin_bunrui = S2.shohin_bunrui) AS avg_hanbai_tanka FROM Shohin S1;

--テーブル別名を利用してテーブルの結合を行っている