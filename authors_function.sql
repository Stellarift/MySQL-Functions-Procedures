DELIMITER //

CREATE FUNCTION GetAuthors(state_code CHAR(2))
RETURNS TEXT
DETERMINISTIC
BEGIN
    DECLARE result TEXT;
    SELECT GROUP_CONCAT(CONCAT(au_lname, ' ', au_fname) SEPARATOR ', ') 
    INTO result
    FROM authors 
    WHERE state = state_code;
    
    RETURN result;
END//

DELIMITER ;