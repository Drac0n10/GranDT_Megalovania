DELIMITER $$
USE GranDT_Megalovania $$
SELECT 'Creando Procedimientos y Funciones Almacenadas' AS 'Estado' $$
DELIMITER $$
drop procedure if exists AltaUsuario $$
create procedure AltaUsuario ( unidUsuario smallint, unnombre varchar(45), unapellido varchar(45) , unemail varchar(100), unfechaNac date, uncontraseña char(64), unes_admin tinyint )
begin
	INSERT INTO Usuario (idUsuario,nombre, apellido, email, fechaNac, contraseña, es_admin )
	Values (unidUsuario,unnombre, unapellido , unemail, unfechaNac, uncontraseña, unes_admin);
	
end $$

call AltaUsuario ( 2, "Goku", "Kakaroto", "goku@kameha1", '2005-10-05', "134goku", false);




