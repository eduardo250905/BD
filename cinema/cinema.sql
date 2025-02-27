CREATE TABLE ATOR (
  coda int,
  nomeart varchar(40),
  nomereal varchar(40),
  nacionalidade varchar(15),
  sexo char(1),
  idade int,
  indicacoesoscar int,
  oscar int,
  PRIMARY KEY(coda)
)

CREATE TABLE FILME (
  codf int,
  nome varchar(40),
  ano int,
  orcamento int,
  tempo int,
  PRIMARY KEY(codf)
)

CREATE TABLE PERSONAGEM (
  coda int,
  codf int,
  personagem varchar(40),
  cache int,
  PRIMARY KEY(coda, codf),
  FOREIGN KEY(coda) REFERENCES ATOR(coda),
  FOREIGN KEY(codf) REFERENCES FILME(codf)
)

INSERT INTO ATOR (coda, nomeart, nomereal, nacionalidade, sexo, idade, indicacoesoscar, oscar)
VALUES
    (1, 'DemiMoore', 'MariadaSilva', 'USA', 'f', 32, 0, 0),
    (2, 'BradPitt', 'JoaoPaulo', 'USA', 'f', 28, 1, 0),
    (3, 'DustinHoffman', 'DustinHoffman', 'USA', 'f', 36, 2, 0),
    (4, 'JessicaLange', 'JessicaLange', 'USA', 'f', 42, 4, 2),
    (5, 'SoniaBraga', 'SoniaBraga', 'Brasil', 'f', 45, 0, 0);

INSERT INTO FILME (codf, nome, ano, orcamento, tempo)
VALUES
    (1, 'AJurada', 1996, 1000000, 18),
    (2, 'ALetraEscarlate', 1995, 10000000, 24),
    (3, 'Seven', 1995, 1500000, 20),
    (4, 'Tootsie', 1982, 50000, 16),
    (5, 'Tieta', 1995, 200000, 18);

INSERT INTO PERSONAGEM (coda, codf, personagem, cache)
VALUES
    (1, 1, 'Mary', 3000),
    (1, 2, 'Sandy', 5000),
    (2, 3, 'John', 5000),
    (3, 4, 'Mary', 1000),
    (4, 4, 'Tootsie', 2000),
    (5, 5, 'Tieta', 500);

UPDATE ATOR
SET sexo = 'm'
WHERE nomeart = 'BradPitt'
