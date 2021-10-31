/*
レコードを登録日の昇順に並べた場合の、各日付時点の販売単価の合計金額を求める。
ただし、登録日がNULLの「カッターシャツ」のレコードが一番最初に来るようにレコードを並べる
登録日、商品名、販売単価、各日付時点の販売単価の合計金額の列を表示すること
*/


-- ウィンドウ関数とOVER句を使用する
-- COALESCE関数を使用してNULL値に'0001-01-01'を変換して表示する方法（登録日のNULL値を'0001-01-01'に変換して、テーブルをだます方法）
SELECT torokubi, shohin_mei, hanbai_tanka, SUM(hanbai_tanka) OVER (ORDER BY COALESCE(torokubi, CAST('0001-01-01' AS DATE))) AS current_sum_tanka FROM Shohin; -- CAST関数を使用することでDATE型に変換する



-- ORDER BYでNULLS FIRSTとすることで、登録日がNULLのレコードを先頭に持ってくる
SELECT torokubi, shohin_mei, hanbai_tanka, SUM(hanbai_tanka) OVER (ORDER BY torokubi NULLS FIRST) AS current_sum_tanka FROM Shohin;