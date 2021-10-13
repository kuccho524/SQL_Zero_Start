/*
商品分類ごとの販売単価の合計avg_hanbai_tankaを含むテーブルを表示させる。
*/

-- 商品分類ごとの平均を求めるため、相関サブクエリを利用する

SELECT shohin_id, shohin_mei, shohin_burni, hanbai_tanka, (SELECT AVG(hanbai_tanka) FROM Shohin AS S2 WHERE S1.shohin_bunrui = S2.shohin_bunrui) FROM Shohin AS S1;

/*
hanbai_tanka全体の平均を求めるには、SELECT文を（）で囲う
商品分類ごとに平均値を出すため、WHEREで条件を指定する。
表を集約するために、各テーブルに「S1」、「S2」をAS句を利用して別名を名付ける
*/