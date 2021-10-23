/*
Shohinテーブルから「販売単価を10%引きにしても利益が100縁より高い事務用品とキッチン用品」を選択する
尚、販売単価を10%引きにした時の利益をriekiテーブルとし、出力するテーブルはshohin_meiとshohin_bunriとする
*/

/*
利益の出力方法
hanbai_tanka * 0.9 - shiire_tanka
*/

SELECT shohin_mei, shohin_bunrui, hanbai_tanka * 0.9 - shiire_tanka AS rieki FROM Shohin WHERE hanbai_tanka * 0.9 - shiire_tanka > 100 AND (shohin_bunrui = '事務用品' OR shohin_bunrui = 'キッチン用品')