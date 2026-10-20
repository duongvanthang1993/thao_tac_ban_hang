use QuanLySinhVien1;

select 
o.oID,
o.oDate,
sum(od.odQTY*p.pPrice) as oPrice
from `Order` o
join orderdetail od on o.oID =od.oID
join product p on od.pID =p.pID
group by o.oID,o.oDate;

select
c.Name as CustomerName,
p.pName as ProductName
from customer c
join`Order` o on c.cID =o.cID
join orderdetail od on o.oID =od.oID
join Product p on od.pID;

select name
from Customer
where cID not in(
select distinct cID
from `Order`
);

select 
o.oID,
o.oDate,
sum(od.odQTY*p.pPrice)as TotalPrice
from`Order` o
join orderdetail od on o.oID =od.oID
join product p on od.pID =p.pID
group by o.oID, o.oDate;

