-- hanbai_tanka_all列に、商品全体の平均販売単価を計算する

SELECT shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, (SELECT AVG(hanbai_tanka) FROM Shohin) 
AS hanbai_tanka_all FROM Shohin;