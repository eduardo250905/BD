CREATE TABLE Empregado (
    id INTEGER AUTO_INCREMENT,
    nome VARCHAR(20),
    salario FLOAT,
    PRIMARY KEY (id)
);

DELIMITER //

CREATE PROCEDURE Insere10()
BEGIN
    DECLARE cont INT DEFAULT 1;
    DECLARE salario FLOAT;

    WHILE cont <= 10 DO
        SET salario = ROUND(RAND() * 5000 + 2000, 2); 
        INSERT INTO Empregado (nome, salario)
        VALUES (CONCAT('nome', cont), salario);
        SET cont = cont + 1;
    END WHILE;
END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE QuantidadeEmpregados(OUT total INT)
BEGIN
    SELECT COUNT(*) INTO total FROM Empregado;
END //

DELIMITER ;