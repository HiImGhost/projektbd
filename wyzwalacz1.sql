DELIMITER $$
CREATE TRIGGER trg_ukonczona AFTER UPDATE 
ON zbior_gier
	FOR EACH ROW BEGIN
		IF NEW.ukonczona = 'Tak'THEN
	INSERT INTO updates VALUES ('Ktoras gra zostala ukonczona');
	END IF;
	END $$
DELIMITER ;