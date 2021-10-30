/*
以下の条件を持つビューを作る
・販売単価が1000円以上
・登録日が9月20日
・含む列が商品名、販売単価、登録日
*/

CREATE VIEW ViewRenshu5_1 (shohin_mei, hanbai_tanka, torokubi) AS SELECT shohin_mei, hanbai_tanka, torokubi FROM Shohin WHERE hanbai_tanka >= 1000 AND torokubi = '2009-09-20';


/*
ビューの作成
CREATE VIEW ビュー名 (カラム1, カラム2, ・・・) AS SELECT カラム1', カラム2', ・・・ FROM テーブル名 ・・・;