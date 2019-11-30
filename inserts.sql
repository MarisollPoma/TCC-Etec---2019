INSERT INTO PET (IDPESSOA,IDSUBESPECIE, RGPET, OBSPET, NOMEPET)
	VALUES (1,7, 450246, 'FEMEA, 12 ANOS SEM CARTEIRA DE VACINA��O', 'MIAU')

	INSERT INTO PEDIDO ( IDEMPRESA, IDPAGAMENTO, IDPET, TOTPEDIDO)
				VALUES (6, 2, 2, 1)


	INSERT INTO SUBESPECIE( IDESPECIE, NOMESUBESPECIE)
		VALUES  ( 1, 'Vira Lata'),
				( 1, 'Akita'), 
				( 1, 'American Stafforshire Terrier'),  
				( 1, 'Basset Hound'),
				( 1, 'Beagle'),
				( 1, 'Bich�n Fris�'),
				( 1, 'Boiadeiro Australiano'),
				( 1, 'Border Colie'),     
				( 1, 'Boston Terrier'),
				( 1, 'Boxer'),  
				( 1, 'Bulldogue Franc�s'),
				( 1, 'Bulldogue Ingl�s'),
				( 1, 'Bull Terrier'),
				( 1, 'Cane Corso'),
				( 1, 'Cavalier King Charles Spaniel'),
				( 1, 'Chihuahua'),
				( 1, 'Chow Chow'),
				( 1, 'Cocker Spaniel Ingl�s'),
				( 1, 'Dachshund'),
				( 1, 'D�lmata'),
				( 1, 'Doberman'),
				( 1, 'Dogo Argentino'),                  
				( 1, 'Fila Brasileiro'),
				( 1, 'Golden Retirever'),
				( 1, 'Husky Siberiano'),
				( 1, 'Jack Russel Terrier'),
				( 1, 'Labrador Retirever'),
				( 1, 'Lhasa Apso'),
				( 1, 'Lulu da Pomer�nia'),
				( 1, 'Malt�s'),
				( 1, 'Mastiff Ingl�s'),
				( 1, 'Pastor Alem�o'),
				( 1, 'Pastor Australiano'),
				( 1, 'Pastor de Shetland'),
				( 1, 'Pequin�s'),
				( 1, 'Pincher'),
				( 1, 'Pit Bull'),
				( 1, 'Poodle'),
				( 1, 'Pug'),
				( 1, 'Rottweiler'),
				( 1, 'Schnauzer'),
				( 1, 'Shar Pei'),
				( 1, 'Shiba'),
				( 1, 'Shi Tzu'),
				( 1, 'Bull Terrier'),
				( 1, 'Weimaraner'),
				( 1, 'Whippet'),
				( 1, 'Yorkshire Terrier'), 
				( 2, 'Vira Lata'),  
				( 2, 'Abiss�nio'),
				( 2, 'Angor�'),
				( 2, 'Balin�s'),
				( 2, 'Himalaio'),
				( 2, 'Javan�s'),
				( 2, 'Korat'),
				( 2, 'Maine Coon'),
				( 2, 'Manx'),
				( 2, 'Mau Eg�pcio'),
				( 2, 'Mist Australiano'),
				( 2, 'Munchkin'),
				( 2, 'Noruegu�s da Floresta'),
				( 2, 'Pelo Curto Americano'),
				( 2, 'Pelo Curto Brasileiro'),
				( 2, 'Pelo Europeu'),
				( 2, 'Pelo Curto Ingl�s'),
				( 2, 'Persa'),
				( 2, 'Siam�s'),
				( 2, 'Sphynx'),
				( 3, 'Papagaio, Calopsita, Arara e outros'),
				( 3, 'Galo, Pav�o, Fais�o e outros'),
				( 3, '�guia, Gavi�o, Outros'),
				( 4, 'Jabuti, Tartaruga, C�gado'),
				( 4, 'Lagarto, Serpente'),
				( 5, 'Hamster,  Chinchila,'),
				( 5, 'Hedgeod, Esquilo')

INSERT INTO ESPECIE (NOMEESPECIE)
	VALUES  ('CACHORRO'),
			('GATO'),
			('AVE'),
			('R�PTIL'),
			('ROEDOR')


			
INSERT INTO SERVICO ( NOMESERVICO , DESCSERVICO)
			VALUES  ('BANHO', 'ESTE SERVI�O � OFERECIDO DE ACORDO COM AS ORIENTA��ES DO PETSHOP'),
					('TOSA', 'ESTE SERVI�O � OFERECIDO DE ACORDO COM O PADR�O DA RA�A OU SOB ORIENTA��O DO DONO'),
					('TOSA HIGI�NICA', 'ESTE SERVI�O � OFERECIDO DE ACORDO COM AS ORIENTA��ES DO PETSHOP'),
					('CONSULTA VETERIN�RIA', 'ESTE SERVI�O � OFERECIDO DE ACORDO COM NECESSIDADES DO PACIENTE')

INSERT INTO USR_PLANO (IDPLANO , IDUSUARIO, VALIDUSR_PLANO)
VALUES( 1, 1,2 )



INSERT INTO PEDIDO_PET ( IDPEDIDO , IDPET ) 
VALUES (2, 2) , 
		(1, 3)

INSERT INTO FATURA (DTEFATURA , DTVFATURA , TOTFATURA, VLDFATURA, VLPFATURA)
			VALUES ( '2019/09/05','2019/10/05', 60.00,1, 60.00) 

			select * from PEDIDO_PET;
			select * from PEDIDO;
			select * from PET;

INSERT INTO PEDIDO_PET (IDPEDIDO ,IDPET)
           VALUES (28,2)

       
INSERT INTO AVALIACAO (IDPEDIDO, NOTAAVALIACAO , TITULOAVALIACAO, COMENTAVALIACAO) 
			VALUES (1,4, 'M�DIA', 'POIS ME ATENDERAM BEM, TANTO NO ESTABELECIMENTO.') 

			SELECT * FROM PEDIDO;


	

CREATE TABLE PEDIDO (
  IDPEDIDO INTEGER IDENTITY(1,1) NOT NULL ,
  IDEMPRESA INTEGER  NOT NULL,
  IDPAGAMENTO INTEGER  NOT NULL,
  IDPET INTEGER  NOT NULL,
  TOTPEDIDO NUMERIC(16,2) NOT NULL,
  PRIMARY KEY(IDPEDIDO),
  CONSTRAINT PEDIDO_EMPRESA_IDEMPRESA FOREIGN KEY (IDEMPRESA) REFERENCES EMPRESA,
  CONSTRAINT PEDIDO_PET_IDPET FOREIGN KEY (IDPET) REFERENCES PET,
  CONSTRAINT PEDIDO_PAGAMENTO_IDPAGAMENTO FOREIGN KEY (IDPAGAMENTO) REFERENCES PAGAMENTO
);

INSERT INTO AVALIACAO (IDPEDIDO, NOTAAVALIACAO , TITULOAVALIACAO, COMENTAVALIACAO) 
			VALUES (28,4, 'M�DIA', 'POIS ME ATENDERAM BEM, TANTO NO ESTABELECIMENTO.') 


SELECT * FROM AVALIACAO;
SELECT * FROM PAGAMENTO;
SELECT * FROM PET;
SELECT * FROM PESSOA;
SELECT * FROM ESPECIE;
SELECT * FROM SUBESPECIE;
SELECT* FROM EMPRESA;
SELECT * FROM PEDIDO;
