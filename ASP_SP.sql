CREATE DATABASE ASP_SP
use ASP_SP

create table Usuarios
(
Id int identity(1,1),
Nombres varchar(50),
Apellidos varchar(50),
Fecha date,
Usuarios varchar (50),
Clave varbinary(max)
)

create table Imagenes(
IdUsuario int,
Imagen image
)

create procedure Registrar
@Nombres varchar (50),
@Apellidos varchar(50),
@Fecha date,
@Usuario varchar(50),
@Clave varchar(50),
@Patron varchar(50),
@IdUsuario int,
@Imagen image
as
begin
insert into Usuarios values(@Nombres,@Apellidos,@Fecha,@Usuario,ENCRYPTBYPASSPHRASE(@Patron,@Clave))
set @IdUsuario=(select Id from Usuarios where Usuarios=@Usuario);
insert into Imagenes values (@IdUsuario,@Imagen)
end

create procedure validar 
@Usuario varchar (50),
@Clave varchar(50),
@Patron varchar (50)
as
begin
select*from Usuarios where Usuarios=@Usuario and convert (varchar(100),DECRYPTBYPASSPHRASE(@Patron,@Clave))=@Clave
end

 create procedure Perfil
 @Id int
 as
 begin
 select*from Usuarios where Id=@Id;
 select*from Imagenes where IdUsuario=@Id
 end

 create procedure Eliminar
 @Id int
 as begin
 delete from Usuarios where Id=@Id;
 delete from Imagenes where IdUsuario=@Id
 end

 create procedure CargarImagen 
 @id int
 as begin
 select Imagen from Imagenes where IdUsuario=@Id 
 end

 create procedure CambiarContrasenia
 @id int,
 @Clave varchar(100),
 @Patron varchar (50)
 as
 begin
 update Usuarios set Clave=(ENCRYPTBYPASSPHRASE(@Patron, @Clave)) where Id=@id
 end


 create procedure CambiarImagen
 @Id int,
 @Imagen image
 as
 begin
 update Imagenes set Imagen=@Imagen where IdUsuario=@Id
 end

 select*from Usuarios
 select*from Imagenes

 create procedure ContarUsuario
 @usuario varchar (50)
 as
 begin
 select COUNT(*) from Usuarios where Usuarios=@usuario
 end