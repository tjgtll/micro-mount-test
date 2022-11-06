DECLARE  @datefrom datetime = dateadd(year,-1,SYSDATETIME()),
		 @datetill datetime = GETDATE();

SELECT  TOP		(
				DATEDIFF	(
							DAY, 
							@datefrom, 
							@datetill
				) + 1
		)
        CONVERT	(
				VARCHAR		(10), 
				DATEADD		(
							DAY	, 
							ROW_NUMBER() OVER(ORDER BY a.object_id) - 1, 
							DATEDIFF(dd, 0,  @datefrom)
				), 
				104			--dd.mm.yyyy
		)
FROM    sys.all_objects		a
        
