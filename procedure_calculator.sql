DELIMITER //

CREATE PROCEDURE CalcProc(
    IN num1 BIGINT,
    IN num2 BIGINT,
    IN sign CHAR(1),
    OUT result BIGINT
)
BEGIN
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
END//

DELIMITER ;