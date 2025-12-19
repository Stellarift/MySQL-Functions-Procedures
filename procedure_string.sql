DELIMITER //

CREATE PROCEDURE SplitStringProc(IN input_text TEXT)
BEGIN
    SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(input_text, ' ', numbers.n), ' ', -1) AS word
    FROM (
        SELECT 1 n UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4
    ) numbers
    WHERE CHAR_LENGTH(input_text) - CHAR_LENGTH(REPLACE(input_text, ' ', '')) >= numbers.n - 1
    ORDER BY n;
END//

DELIMITER ;