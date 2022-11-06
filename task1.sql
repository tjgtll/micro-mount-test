create table #bst (n int, p int)

insert into #bst values(10, NULL)
insert into #bst values(9, 10)
insert into #bst values(8, 10)
insert into #bst values(7, 10)
insert into #bst values(6, 9)
insert into #bst values(5, 6)
insert into #bst values(4, 8)
insert into #bst values(3, 8)
insert into #bst values(2, 7)
insert into #bst values(1, 3)

select	n,
	case
		when
			p	is null
			then	'Root'
		when
			exists	(
					select	n,p 
					from	#bst  as b 
					where	#bst.n = b.p
			)
			then	'Inner' 
			else	'Leaf'
	end		as	info
from		#bst
order	by	n;

drop table #bst;
