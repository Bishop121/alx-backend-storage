USE holberton; -- Switch to the correct database

DELIMITER $$  -- Set delimiter to handle the function block

CREATE FUNCTION SafeDiv(
    a INT,
    b INT
)
RETURNS FLOAT
DETERMINISTIC
BEGIN
    IF b = 0 THEN
        RETURN 0;
    ELSE
        RETURN a / b;
    END IF;
END$$

DELIMITER ; -- Revert to the default delimiter

