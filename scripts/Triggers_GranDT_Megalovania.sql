DELIMITER $$
USE GranDT_Megalovania $$
CREATE TRIGGER befInsUsuario BEFORE INSERT ON Usuario
FOR EACH ROW
BEGIN
    DECLARE v_count INT;
    SELECT COUNT(*) INTO v_count FROM Usuario WHERE email = NEW.email;
    IF v_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El email ingresado ya está registrado. Ingrese otro.';
    END IF;
END $$
  
DELIMITER ;

DELIMITER $$
USE GranDT_Megalovania $$
CREATE TRIGGER befInsEquipo BEFORE INSERT ON Equipo
FOR EACH ROW
BEGIN
    DECLARE cnt INT;
    SELECT max_equipos INTO cnt FROM Config_Global WHERE idConfig = 1;
    IF ( (SELECT COUNT(*) FROM Equipo) >= cnt ) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No se pueden crear mas equipos: se alcanzó el límite configurado.';
    END IF;
END$$

DELIMITER $$
USE GranDT_Megalovania $$
CREATE TRIGGER befInsFutbolista BEFORE INSERT ON Futbolista
FOR EACH ROW
BEGIN
    IF NEW.cotizacion < 0 OR NEW.cotizacion > 99999999.99 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cotización fuera de rango permitido (0 - 99.999.999,99).';
    END IF;
END$$
  
DELIMITER $$
USE GranDT_Megalovania $$
CREATE TRIGGER befIns BEFORE INSERT ON Puntuacion
FOR EACH ROW
BEGIN
    DECLARE v_count INT;
    SELECT COUNT(*) INTO v_count 
    FROM Puntuacion 
    WHERE idFutbolista = NEW.idFutbolista 
      AND fecha = NEW.fecha;
    IF v_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El jugador ya tiene una puntuación para esa fecha.';
    END IF;
END $$

DELIMITER $$
USE GranDT_Megalovania $$
CREATE TRIGGER befInsFutbolista_Plantilla BEFORE INSERT ON Futbolista_Plantilla
FOR EACH ROW
BEGIN
    DECLARE v_count INT;
    SELECT COUNT(*) INTO v_count FROM Futbolista_Plantilla WHERE idPlantilla = NEW.idPlantilla;
    IF v_count >= 20 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Esta plantilla ya tiene el máximo de jugadores permitidos.';
    END IF;
END $$





