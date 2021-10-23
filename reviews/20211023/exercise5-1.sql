/*
下記条件を満たすViewRenshu5_1を作成する
・販売単価が1000以上
・登録日が2009-09-20
・含む列は商品名、販売単価、登録日
*/

-- ビューの作成にはCREATE VIEW ビュー名(列1, 列2, ・・・) AS SELECT文
CREATE VIEW ViewRenshu5_1(shohin_mei, hanbai_tanka, torokubi) AS SELECT shohin_mei, hanbai_tanka, torokubi FROM Shohin WHERE hanbai_tanka >= 1000 AND torokubi = '2009-09-20';