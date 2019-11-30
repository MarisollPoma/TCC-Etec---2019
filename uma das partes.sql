INSERT INTO  PLANO (idPLANO, tipoPLANO, descPLANO, duraPLANO, valorPLANO)
VALUES   (1,3 , ' o estabelecimento terá seus serviços no topo da pesquisa', 1, 30.00 ) 

/*excluir  */ 

SELECT * FROM PAGAMENTO;


INSERT INTO PAGAMENTO(idPAGAMENTO, descPAGAMENTO)
VALUES (1, 'Cartão de Debito '),
		(2, 'Cartão de Credito'),
		(3, 'Saldo do Pet')
		 
		 /* Atualizando dados */
		 UPDATE PAGAMENTO SET descPAGAMENTO = 'Saldo PET' WHERE idPAGAMENTO = 3;



SELECT * FROM PLANO;

