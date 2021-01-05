DELIMITER $$
CREATE PROCEDURE p_ukon_all(IN ukon VARCHAR(10))
BEGIN
SELECT idgry,nazwa,platforma,ukonczona
FROM zbior_gier
WHERE ukonczona = ukon;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE p_ukon_steam(IN ukon VARCHAR(10))
BEGIN
SELECT idSteam,nazwa,ukonczona
FROM steam
WHERE ukonczona = ukon;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE p_ukon_uplay(IN ukon VARCHAR(10))
BEGIN
SELECT idUplay,nazwa,rozmiarGB,ukonczona
FROM uplay
WHERE ukonczona = ukon;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE p_ukon_gog(IN ukon VARCHAR(10))
BEGIN
SELECT idEpic,nazwa,rozmiarGB,ukonczona
FROM gog
WHERE ukonczona = ukon;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE p_ukon_origin(IN ukon VARCHAR(10))
BEGIN
SELECT idOrigin,nazwa,rozmiarGB,ukonczona
FROM origin
WHERE ukonczona = ukon;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE p_ukon_epic(IN ukon VARCHAR(10))
BEGIN
SELECT idEpic,nazwa,rozmiarGB,ukonczona
FROM epic
WHERE ukonczona = ukon;
END $$
DELIMITER ;