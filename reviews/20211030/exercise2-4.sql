/*
Shohinテーブルから「販売単価を10%引きにしても利益が100円より高い事務用品とキッチン用品」を選択し、shohin_mei, shohin_bunrui, riekiを出力する
*/

SELECT shohin_mei, shohin_bunrui, hanbai_tanka * 0.9 - shiire_tanka AS rieki FROM Shohin WHERE hanbai_tanka * 0.9 - shiire_tanka > 100 AND (shohin_bunrui = '事務用品' OR shohin_bunrui = 'キッチン用品');


/*
WHEREで出力するレコードの条件を設定する。
ANDは日本語で言うところの「かつ」、ORは「もしくは」、「または」に値する
*/