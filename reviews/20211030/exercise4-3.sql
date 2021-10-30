/*
ShohinテーブルのレコードをコピーしたものをShohinSaekiテーブルに挿入する。
ShohinSaekiテーブルにsaekiは販売単価から仕入単価を引いたものを挿入する
*/

INSERT INTO ShohinSaeki (shohin_id, shohin_mei, hanbai_tanka, shiire_tanka, saeki) SELECT shohin_id, shohin_mei, hanbai_tanka, shiire_tanka, hanbai_tanka - shiire_tanka FROM Shohin;


/*
レコードのコピー
INSERT INTO コピー先のテーブル (カラム1, カラム2, ・・・) SELECT カラム1', カラム2', ・・・ FROM コピー元のテーブル;
*/