/* EXCLUINDO UMA CONSTRAINT */ 
ALTER TABLE PET 
DROP CONSTRAINT PET_ESPECIE_IDESPECIE;

SELECT * FROM PET;
SELECT * FROM PESSOA;
/* VENDO QUANTAS PET COM NOME LUNA TEM EM UMA TABELA */ 
SELECT * FROM PET WHERE NOMEPET = 'LUNA'

SELECT * FROM SERVICO 
WHERE  NOMESERVICO = 'BANHO'

SELECT * FROM PESSOA;

CREATE TABLE PEDIDO_PET (
  IDPEDIDO_PET INTEGER IDENTITY(1,1) NOT NULL,
  IDPEDIDO INTEGER NOT NULL, 
  IDPET INTEGER NOT NULL,
  PRIMARY KEY(IDPEDIDO_PET),
  CONSTRAINT PEDIDO_PET_PEDIDO_IDPEDIDO FOREIGN KEY (IDPEDIDO) REFERENCES PEDIDO,
  CONSTRAINT PEDIDO_PET_PET_IDPET FOREIGN KEY (IDPET) REFERENCES PET
);

SELECT * FROM PEDIDO_PET;