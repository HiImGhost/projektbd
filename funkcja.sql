CREATE FUNCTION daty(data_wydania CHAR(20), data_zakupu CHAR(20))
RETURNS CHAR (50) DETERMINISTIC
RETURN CONCAT(data_wydania, '   ',data_zakupu);
