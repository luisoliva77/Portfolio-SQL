INSERT INTO MARCA VALUES('TOYOTA'),
						('HONDA'),
						('VOLKSWAGEN'),
						('CHEVROLET'),
						('FORD'),
						('HYUNDAI'),
						('FIAT'),
						('JEEP'),
						('NISSAN'),
						('BMW')
GO

INSERT INTO MODELO(NOME,ID_MARCA) 
			VALUES('COROLLA',1),
				  ('COROLLA CROSS',1),
				  ('HILUX',1),
				  ('YARIS',1),
				  ('ETIOS',1)
GO

INSERT INTO MODELO(NOME,ID_MARCA) 
			VALUES('CIVIC',2),
				  ('CITY',2),
				  ('HR-V',2),
				  ('FIT',2),
				  ('CR-V',2)
GO

INSERT INTO MODELO(NOME,ID_MARCA) 
			VALUES('GOL',3),
				  ('POLO',3),
				  ('VIRTUS',3),
				  ('JETTA',3),
				  ('T-CROSS',3)
GO

INSERT INTO MODELO(NOME,ID_MARCA) 
			VALUES('ONIX',4),
				  ('ONIX PLUS',4),
				  ('CRUZE',4),
				  ('TRAKER',4),
				  ('S10',4)
GO

INSERT INTO MODELO(NOME,ID_MARCA) 
			VALUES('KA',5),
				  ('FIESTA',5),
				  ('ECOSPORT',5),
				  ('RANGER',5),
				  ('MAVERIK',5)
GO

INSERT INTO MODELO(NOME,ID_MARCA) 
			VALUES('HB20',6),
				  ('HB20S',6),
				  ('CRETA',6),
				  ('TUCSON',6),
				  ('SANTA FE',6)
GO

INSERT INTO MODELO(NOME,ID_MARCA) 
			VALUES('UNO',7),
				  ('ARGO',7),
				  ('CRONOS',7),
				  ('TORO',7),
				  ('STRADA',7)
GO

INSERT INTO MODELO(NOME,ID_MARCA) 
			VALUES('RENEGADE',8),
				  ('COMPASS',8),
				  ('COMMANDER',8)
GO

INSERT INTO MODELO(NOME,ID_MARCA) 
			VALUES('MARCH',9),
				  ('VERSA',9),
				  ('SENTRA',9),
				  ('KICKS',9),
				  ('FRONTIER',9)
GO

INSERT INTO MODELO(NOME,ID_MARCA) 
			VALUES('SERIE 1',10),
				  ('SERIE 3',10),
				  ('X1',10),
				  ('X3',10),
				  ('X5',10)
GO


INSERT INTO Carro (ID_MODELO, ANO, COR, PRECO,PLACA)
VALUES
 -- Toyota
 (1, 2022, 'Preto', 89900.00, 'ABC1D23'),   -- Corolla
 (2, 2023, 'Branco', 134900.00, 'DEF4G56'), -- Corolla Cross
 (3, 2021, 'Prata', 189900.00, 'GHI7J89'),  -- Hilux
 (4, 2020, 'Cinza', 75900.00, 'JKL0M12'),   -- Yaris
 (5, 2019, 'Vermelho', 68900.00, 'NOP3Q45')-- Etios

 GO

 INSERT INTO Carro (ID_MODELO, ANO, COR, PRECO, PLACA)
VALUES
 -- Honda
 (6, 2022, 'Preto', 112000.00, 'RST6U78'),  -- Civic
 (7, 2023, 'Azul', 87900.00, 'VWX9Y01'),    -- City
 (8, 2021, 'Branco', 119900.00, 'BCD2E34'), -- HR-V
 (9, 2020, 'Prata', 69900.00, 'FGH5I67'),   -- Fit
 (10, 2022, 'Cinza', 159900.00, 'IJK8L90') -- CR-V
 GO

 INSERT INTO Carro (ID_MODELO, ANO, COR, PRECO, PLACA)
VALUES
 -- Volkswagen
 (11, 2019, 'Branco', 55900.00, 'MNO1P23'), -- Gol
 (12, 2021, 'Preto', 78900.00, 'QRS4T56'),  -- Polo
 (13, 2023, 'Prata', 104900.00, 'UVW7X89'), -- Virtus
 (14, 2022, 'Cinza', 139900.00, 'YZA0B12'), -- Jetta
 (15, 2023, 'Azul', 129900.00, 'CDE3F45') -- T-Cross
 GO


 INSERT INTO Carro (ID_MODELO, ANO, COR, PRECO, PLACA)
VALUES
 -- Chevrolet
 (16, 2022, 'Branco', 74900.00, 'GHI6J78'), -- Onix
 (17, 2023, 'Preto', 82900.00, 'KLM9N01'),  -- Onix Plus
 (18, 2021, 'Prata', 109900.00, 'OPQ2R34'), -- Cruze
 (19, 2022, 'Cinza', 134900.00, 'STU5V67'), -- Tracker
 (20, 2020, 'Branco', 179900.00, 'WXY8Z90')-- S10
 GO



INSERT INTO CLIENTE (NOME, CPF,SEXO, EMAIL)
VALUES
 ('Carlos Henrique Silva', '12345678901','M','carlos.silva@email.com'),
 ('Mariana Souza', '23456789012','F','mariana.souza@email.com'),
 ('João Pedro Almeida', '34597890123','M','joao.almeida@email.com'),
 ('Fernanda Costa', '45678901234','F','fernanda.costa@email.com'),
 ('Rafael Pereira', '56798902345','M','rafael.pereira@email.com'),
 ('Lucas Martins', '67890123456','M','lucas.martins@email.com'),
 ('Ana Paula Ribeiro', '7890123456','F','ana.ribeiro@email.com'),
 ('Bruno Fernandes', '89072345678','M','bruno.fernandes@email.com'),
 ('Patrícia Lima', '90123456789','F','patricia.lima@email.com'),
 ('Diego Rocha', '01234567890','M','diego.rocha@email.com')
 GO

 INSERT INTO VENDEDOR(NOME, DATA_CONTRATACAO)
VALUES
 ('Marcos Oliveira', '2021-03-15'),
 ('Ana Beatriz Santos', '2022-07-10'),
 ('Ricardo Menezes', '2020-01-20'),
 ('Juliana Ferreira', '2023-02-05'),
 ('Paulo Henrique Costa', '2019-11-30')
 GO


 INSERT INTO FORMA_PAGAMENTO VALUES('PIX'),
								   ('CARTAO'),
								   ('FINANCIAMENTO')

GO

INSERT INTO VENDAS
(DATA_VENDA, ID_CLIENTE, ID_VENDEDOR, ID_CARRO, ID_PAGAMENTO, VALOR)
VALUES
 ('2024-01-10', 1, 1, 2, 1, 78500.00),
 ('2024-01-15', 3, 2, 6, 2, 112000.00),
 ('2024-01-20', 5, 3, 11, 3, 55900.00),
 ('2024-02-01', 2, 1, 8, 1, 119900.00),
 ('2024-02-10', 4, 4, 14, 2, 139900.00)
 GO
