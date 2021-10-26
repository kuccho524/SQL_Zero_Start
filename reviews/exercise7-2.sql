/*
商品テーブルをマスタに外部結合で出力したNULL値を「不明」と表示して出力する
*/

-- 先ずはNULL値になる場所を確認する

SELECT TS.tenpo_id, TS.tenpo_mei, S.shohin_id, S.shohin_mei, S.hanbai_tanka FROM TenpoShohin AS TS RIGHT OUTER JOIN Shohin AS S ON TS.shohin_id = S.shohin_id;

-- 対象個所のNULLを値を変換する = COALESCE関数を使用する
-- COALESCE(NULL, データ1, データ2, ・・・)
SELECT COALESCE(NULL, TS.tenpo_id, '不明'), COALESCE(NULL, TS.tenpo_mei, '不明'), S.shohin_id, S.shohin_mei, S.hanbai_tanka FROM TenpoShohin AS TS RIGHT OUTER JOIN Shohin AS S ON TS.shohin_id = S.shohin_id;