use NORTHWND

Create database ejemploetl
use ejemploetl

-- Aunque este en otra base de datos estas 2 consultas hacen la consulta a la bd NORTHWIND
select * from
NORTHWND.dbo.Categories;

select * from
NORTHWND.dbo.Products;

-- Creacion de tabla productos
create table productos(
	productoID int not null identity(1,1),
	nombreproducto nvarchar(40) not null,
	precio money not null,
	stock smallint not null,
	importe as
	(precio * stock),
	categoria nvarchar(15) not null,
	constraint pk_producto
	primary key(productoId)
)

-- Permite visualizar las caracteristicas de las tablas:
select * from sys.tables

-- Aqui falto poner el campo categoria en la tabla productos, se lo añadi con este comando
alter table productos
add categoria nvarchar(15) not null

insert into ejemploetl.dbo.productos

-- Consulta por inner join
select p.ProductName, p.UnitPrice, p.UnitsInStock,
c.CategoryName
from
NORTHWND.dbo.Products as p
inner join NORTHWND.dbo.Categories as c
on c.CategoryID = p.CategoryID

select * from productos


