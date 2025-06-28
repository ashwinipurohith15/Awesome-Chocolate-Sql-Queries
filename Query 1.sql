select * from sales;

select SaleDate, Customers from sales;
select Amount, SaleDate, Customers from sales;
select SaleDate, Amount, Boxes, Amount/Boxes As Sum from sales;
select SaleDate, Amount, Boxes, Amount/Boxes 'Sum' from sales;

select * from sales where Amount>10000;

select * from sales where Amount>10000 order by Amount desc;

Select * from sales where GeoID='G1'order by PID, Amount desc; 

select * from sales where Amount>10000 and SaleDate >'2022-01-01'order by SaleDate desc;

select * from sales where Amount>10000 and year(SaleDate)=2022 order by Amount desc;

select * from sales where Boxes between 0 and 50;

select * from sales
where Boxes>0 and Boxes<=50;

select * from sales where Boxes between 0 and 50 order by Boxes asc;
select SaleDate, Amount, Boxes, weekday(SaleDate) as ' Day of week '
from sales
where weekday(SaleDate)='4';

select * from people;
select * from people where team='Delish' or team='Jucies';
select * from people where team in ('Delish','Jucies');

select * from people where salesperson like '%B%';

select * from sales;

select SaleDate, amount,
	case when amount <1000 then 'Under 1k'
		 when amount < 5000 then 'Under 5k'
         when amount < 10000 then 'Under 10k'
    else '10k or more'
    end as ' Amount Category '
    from sales order by amount asc;
    
    
    
    


