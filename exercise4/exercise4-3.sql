/*shohin_id, shohin_mei, hanbai_tanka, shiire_tanka, saekiのカラムを持つShohinSaekiテーブルを作成し、
ShohinSaekiテーブルにShohinテーブルの内容をコピーする。
この時、saekiにhanbai_tankaとshiire_tankaの差分を挿入する
*/

INSERT INTO S_Saeki (shohin_id, shohin_mei, hanbai_tanka, shiire_tanka, saeki) SELECT shohin_id, shohin_mei, hanbai_tanka, shiire_tanka, hanbai_tanka - shiire_tanka FROM Shohin;