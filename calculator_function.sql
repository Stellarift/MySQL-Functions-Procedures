DELIMITER //

CREATE FUNCTION Calculator (
    num1 BIGINT,
    num2 BIGINT,
    sign CHAR(1)
)
RETURNS BIGINT
DETERMINISTIC
BEGIN
    DECLARE result BIGINT;
    
    IF sign = '+' THEN
        SET result = num1 + num2;
    ELSEIF sign = '-' THEN
        SET result = num1 - num2;
    ELSEIF sign = '*' THEN
        SET result = num1 * num2;
    ELSEIF sign = '/' THEN
        SET result = num1 / num2;
    ELSE
        SET result = 0;
    END IF;
    
    RETURN result;
END//

DELIMITER ;