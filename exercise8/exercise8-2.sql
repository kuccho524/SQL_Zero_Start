/*
レコードを登録日の昇順に並べた場合の各日付時点の販売単価の合計金額を求める。
ただし、登録日がNULLの「カッターシャツ」のレコードが一番最小にくるようにする
*/

--①torokubiがnullの場合、「1年1月1日」とみなす
SELECT torokubi, shohin_mei, hanbai_tanka, SUM(hanbai_tanka) OVER (ORDER BY COALESCE(torokubi, CAST('0001-01-01' AS DATE))) AS current_sum_tanka FROM Shohin;


--②torokubiがnullの場合、先頭に持ってくるようにする
SELECT torokubi, shohin_mei, hanbai_tanka, SUM(hanbai_tanka) OVER (ORDER BY torokubi NULLS FIRST) AS current_sum_tanka FROM Shohin;