DELIMITER $$
CREATE TRIGGER trg_dodanaUplay AFTER INSERT 
ON uplay
	FOR EACH ROW BEGIN
	INSERT INTO updates VALUES ('Zostala dodana nowa gra na Uplay');
	INSERT INTO updates VALUES (NEW.nazwa);
	END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER trg_dodanaSteam AFTER INSERT 
ON steam
	FOR EACH ROW BEGIN
	INSERT INTO updates VALUES ('Zostala dodana nowa gra na Steam');
	INSERT INTO updates VALUES (NEW.nazwa);
	END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER trg_dodanaGOG AFTER INSERT 
ON gog
	FOR EACH ROW BEGIN
	INSERT INTO updates VALUES ('Zostala dodana nowa gra na GOG');
	INSERT INTO updates VALUES (NEW.nazwa);
	END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER trg_dodanaEpic AFTER INSERT 
ON epic
	FOR EACH ROW BEGIN
	INSERT INTO updates VALUES ('Zostala dodana nowa gra na Epic');
	INSERT INTO updates VALUES (NEW.nazwa);
	END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER trg_dodanaOrigin AFTER INSERT 
ON origin
	FOR EACH ROW BEGIN
	INSERT INTO updates VALUES ('Zostala dodana nowa gra na Origin');
	INSERT INTO updates VALUES (NEW.nazwa);
	END $$
DELIMITER ;