/*
Shohinテーブルをコピーして、shohin_id、shohin_mei、hanbai_tanka、shiire_tanka、saekiを持つShohinSaekiテーブルを作成し、レコードを挿入する
*/

--商品差益テーブルを作成する
CREATE TABLE ShohinSaeki(shohin_id CHAR(4) NOT NULL,
shohin_mei VARCHAR(100) NOT NULL,
hanbai_tanka INTEGER,
shiire_tanka INTEGER,
saeki INTEGER,
PRIMARY KEY(shohin_id));

--Shohinテーブルをコピーしてsaekiを持つShohinSaekiテーブルに列を挿入する
INSERT INTO ShohinSaeki(shohin_id, shohin_mei, hanbai_tanka, shiire_tanka, saeki) SELECT shohin_id, shohin_mei, hanbai_tanka, shiire_tanka, hanbai_tanka - shiire_tanka FROM Shohin;