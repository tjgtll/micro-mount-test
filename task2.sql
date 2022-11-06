create table #t(id int, sum1 decimal(10,2))
insert #t(id, sum1) values(1, 1.2)
insert #t(id, sum1) values(2, 1.5)
insert #t(id, sum1) values(3, 1.7)
insert #t(id, sum1) values(4, -0.5)

select	id,sum1,
		coalesce(
			sum(sum1) over (
				order by id 
				rows between unbounded preceding 
			and current row
			), 
			0
		) as itog
from		#t
order by	#t.id ;

drop table	#t;