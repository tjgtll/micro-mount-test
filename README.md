## Задание номер 1 

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

Дана таблица, первая колонка - номер ID, вторая - Parent ID, или родительский ID

Фактически - древовидная структура данных.

Напишите запрос, возвращающий две колонки - n и информация о том, является ли n корневым узлом (root), конечным (leaf) или промежуточным (inner)

### Результат:
  
| n  | info | 
|----|------|
|  1 | Leaf |
|  2 | Leaf |
|  3 | Inner|
|  4 | Leaf |
|  5 | Leaf |
|  6 | Inner|
|  7 | Inner|
|  8 | Inner|
|  9 | Inner|
| 10 | Root |

## Задание номер 2

    create table #t(id int, sum1 decimal(10,2))
    insert #t(id, sum1) values(1, 1.2)
    insert #t(id, sum1) values(2, 1.5)
    insert #t(id, sum1) values(3, 1.7)
    insert #t(id, sum1) values(4, -0.5)

Напишите запрос, возвращающий нарастающий итог второй колонки

### Результат:
    
| id | sum1 | itog |
|----|------|------|
|  1 | 1.20 | 1.20 |
|  2 | 1.50 | 2.70 |
|  3 | 1.70 | 4.40 |
|  4 | -0.50| 3.90 |

## Задание номер 3

Задекларируйте две переменные типа datetime *@datefrom*, *@datetill*, первой присвойте значение "год назад", второй - текущую дату.

Напишите запрос, возвращающий все дни за период с *@datefrom* по *@datetill*
