/*
ShohinテーブルをマスタにしてTenpoShohinテーブルと外部結合を行い、
NULLを「不明」と表示する
*/

-- NULLを「不明」と表示する = COALESCEを使用して書き換える

SELECT COALESCE(NULL, T.tenpo_id, '不明') AS tenpo_id, COALESCE(NULL, T.tenpo_mei, '不明') AS tenpo_mei, S.shohin_id, S.shohin_mei, S.hanbai_tanka FROM TenpoShohin AS T RIGHT OUTER JOIN Shohin AS S ON S.shohin_id = T.shohin_id;


-- テーブル同士の結合を行うため、カラム名の先頭にテーブル別名を付けて「テーブル別名.カラム名」とする