create database Practica
GO

use Practica

create table Productos 
(
Id int identity (1,1) primary key,
Nombre nvarchar (100),
Descripcion nvarchar (100),
Marca nvarchar (100),
Precio float,
Stock int
)

insert into Productos 
values
('Gaseosa','3 litros','marcacola',7.5,24),
('Chocolate','Tableta 100 gramos','iberica',12.5,36)

GO

---PROCEDIMIENTOS ALMACENADOS 

--------------------------MOSTRAR 
create proc MostrarProductos
as
select *from Productos
GO

--------------------------INSERTAR 
create proc InsetarProductos
@nombre nvarchar (100),
@descrip nvarchar (100),
@marca nvarchar (100),
@precio float,
@stock int
as
insert into Productos values (@nombre,@descrip,@marca,@precio,@stock)
GO

------------------------ELIMINAR
create proc EliminarProducto
@idpro int
as
delete from Productos where Id=@idpro
GO

------------------EDITAR

create proc EditarProductos
@nombre nvarchar (100),
@descrip nvarchar (100),
@marca nvarchar (100),
@precio float,
@stock int,
@id int
as
update Productos set Nombre=@nombre, Descripcion=@descrip, Marca=@marca, Precio=@precio, Stock=@stock where Id=@id
GO

--------------------BUSCAR
CREATE PROCEDURE BuscarProducto
    @nombre NVARCHAR(50)
AS
BEGIN
    -- Selecciona los productos cuyo nombre coincida parcialmente con el valor del parámetro @nombre.
    -- Utiliza LIKE para buscar coincidencias que contengan el nombre proporcionado.
    SELECT * 
    FROM Productos
    WHERE Nombre LIKE '%' + @nombre + '%';
END
