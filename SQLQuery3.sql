-- TRUNCATE TABLE Demo.RepPerformance -- beacuse again retrieve the table values are rpeated 
-- so first we must truncate needed table that was located in procedure . SOLUTION : add this query into the procedure 


EXEC Demo.uspUpdateRepPerformance


SELECT * FROM  Demo.RepPerformance