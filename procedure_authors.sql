DELIMITER //

CREATE PROCEDURE GetAuthorsProc(IN state_code CHAR(2))
BEGIN
    SELECT * FROM authors WHERE state = state_code;
END//

DELIMITER ;