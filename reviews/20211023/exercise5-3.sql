/*
商品全体の販売単価平均(hanbai_tanka_all)を表示し、shohin_id, shohin_mei, shohin_bunrui, hanbai_tankaを含める
*/

/*
販売単価平均(hanbai_tanka_all)を表示するためにスカラサブクエリを使用する
(SELECT AVG(hanbai_tanka) ・・・)
*/

SELECT shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, (SELECT AVG(hanbai_tanka) FROM Shohin) AS hanbai_tanka_all FROM Shohin;