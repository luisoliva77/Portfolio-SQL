INSERT INTO CARGO (NOME_CARGO, SALARIO_BASE) VALUES
('Desenvolvedor Junior', 3000),
('Desenvolvedor Pleno', 6000),
('Desenvolvedor Senior', 10000),
('Analista de Dados', 5000),
('Analista de BI', 5500),
('Engenheiro de Dados', 8000),
('Cientista de Dados', 9000),
('Analista de RH', 3500),
('Recrutador', 3000),
('Analista Financeiro', 4000),
('Executivo de Vendas', 4500),
('Analista de Suporte', 2800)
GO

INSERT INTO DEPARTAMENTO (NOME_DEPART) VALUES
('Tecnologia da Informação'),
('Dados e BI'),
('Recursos Humanos'),
('Financeiro'),
('Comercial'),
('Suporte ao Cliente')
GO

INSERT INTO FUNCIONARIO 
(NOME, CPF, SEXO, DATA_NASCIMENTO, DATA_ADMISSAO, EMAIL, STATUS, ID_CARGO, ID_DEPARTAMENTO)
VALUES
('Lucas Almeida', '12345644321', 'M', '1995-03-10', '2022-01-15', 'lucas@empresa.com', 'Ativo', 1, 1),
('Mariana Souza', '54365456786', 'F', '1992-07-21', '2021-05-10', 'mariana@empresa.com', 'Ativo', 2, 1),
('Carlos Pereira', '33456789876', 'M', '1988-11-02', '2020-03-20', 'carlos@empresa.com', 'Ativo', 3, 1),
('Fernanda Lima', '23450908757', 'F', '1996-09-15', '2023-02-01', 'fernanda@empresa.com', 'Ativo', 4, 2),
('Rafael Gomes', '12367890764', 'M', '1990-06-30', '2019-08-12', 'rafael@empresa.com', 'Ativo', 6, 1),
('Juliana Martins','38765465432', 'F', '1993-04-18', '2022-06-25', 'juliana@empresa.com', 'Ativo', 5, 1),
('Bruno Rocha', '77654678765', 'M', '1985-12-05', '2018-10-10', 'bruno@empresa.com', 'Ativo', 7, 2),
('Camila Fernandes', '77653465476', 'F', '1997-01-22', '2023-07-03', 'camila@empresa.com', 'Ativo', 8, 3),
('Diego Santos', '44356545676', 'M', '1991-08-14', '2021-11-11', 'diego@empresa.com', 'Ativo', 10, 4),
('Patricia Oliveira', '33456567865', 'F', '1989-05-09', '2020-09-09', 'patricia@empresa.com', 'Ativo', 11, 5),
('Eduardo Costa', '15647876451', 'M', '1994-02-28', '2022-04-14', 'eduardo@empresa.com', 'Ativo', 12, 6),
('Aline Ribeiro', '34578898765', 'F', '1998-10-19', '2024-01-08', 'aline@empresa.com', 'Ativo', 9, 2)
GO

INSERT INTO BENEFICIO (NOME_BENEFICIO, DESCRICAO) VALUES
('Vale Alimentação', 'Auxílio mensal para alimentação'),
('Vale Transporte', 'Auxílio para deslocamento residência-trabalho'),
('Plano de Saúde', 'Assistência médica para o funcionário'),
('Plano Odontológico', 'Assistência odontológica'),
('Seguro de Vida', 'Seguro em caso de invalidez ou falecimento'),
('Gympass', 'Acesso a academias e atividades físicas'),
('Auxílio Home Office', 'Ajuda de custo para trabalho remoto'),
('Bônus Anual', 'Bonificação baseada em desempenho')
GO

INSERT INTO FUNCIONARIO_BENEFICIO
(ID_FUNCIONARIO, ID_BENEFICIO, VALOR, DATA_INICIO, DATA_FIM)
VALUES
-- Lucas (Dev Jr)
(1, 1, 600.00, '2022-01-15', NULL),
(1, 2, 200.00, '2022-01-15', NULL),
(1, 3, 300.00, '2022-01-15', NULL),

-- Mariana (Dev Pleno)
(2, 1, 800.00, '2021-05-10', NULL),
(2, 3, 350.00, '2021-05-10', NULL),
(2, 6, 0.00, '2021-05-10', NULL),

-- Carlos (Dev Senior)
(3, 1, 1000.00, '2020-03-20', NULL),
(3, 3, 500.00, '2020-03-20', NULL),
(3, 5, 150.00, '2020-03-20', NULL),

-- Fernanda (Dados)
(4, 1, 700.00, '2023-02-01', NULL),
(4, 7, 200.00, '2023-02-01', NULL),

-- Rafael (DevOps)
(5, 1, 900.00, '2019-08-12', NULL),
(5, 3, 400.00, '2019-08-12', NULL),

-- Juliana (QA)
(6, 1, 650.00, '2022-06-25', NULL),
(6, 4, 120.00, '2022-06-25', NULL),

-- Bruno (Eng Dados)
(7, 1, 850.00, '2018-10-10', NULL),
(7, 3, 450.00, '2018-10-10', NULL),
(7, 8, 2000.00, '2023-01-01', '2023-12-31'),

-- Camila (RH)
(8, 1, 600.00, '2023-07-03', NULL),

-- Diego (Financeiro)
(9, 1, 700.00, '2021-11-11', NULL),
(9, 3, 300.00, '2021-11-11', NULL),

-- Patricia (Vendas)
(10, 1, 750.00, '2020-09-09', NULL),
(10, 8, 3000.00, '2023-01-01', '2023-12-31'),

-- Eduardo (Suporte)
(11, 1, 500.00, '2022-04-14', NULL),

-- Aline (Dados)
(12, 1, 650.00, '2024-01-08', NULL),
(12, 7, 200.00, '2024-01-08', NULL)
GO


INSERT INTO DEPENDENTE (NOME_DEPENDENTE, PARENTESCO, ID_FUNCIONARIO) VALUES
('Ana Souza', 'Filho', 1),
('Carlos Souza', 'Conjuge', 1),

('Mariana Lima', 'Filha', 2),

('Pedro Alves', 'Filho', 3),
('Juliana Alves', 'Filho', 3),

('Fernanda Rocha', 'Conjuge', 4),

('Lucas Pereira', 'Filha', 5),
('Beatriz Pereira', 'Filha', 5),

('Gabriel Costa', 'Filha', 6),

-- funcionário 7 sem dependente

('Rafaela Martins', 'Conjuge', 8),

('Bruno Ribeiro', 'Filho', 9),
('Clara Ribeiro', 'Filha', 9),

-- funcionário 10 sem dependente

('Eduardo Gomes', 'Conjuge', 11),

('Isabela Santos', 'Filho', 12),
('Mateus Santos', 'Filha', 12)
GO

INSERT INTO SALARIO (DATA_INICIO, VALOR, DATA_FIM, ID_FUNCIONARIO) VALUES
-- FUNCIONARIO 1
('2022-01-15', 3000.00, '2023-01-01', 1),
('2023-01-01', 4000.00, NULL, 1),

-- FUNCIONARIO 2
('2021-05-10', 2500.00, '2022-06-01', 2),
('2022-06-01', 3200.00, NULL, 2),

-- FUNCIONARIO 3
('2020-03-20', 4000.00, '2022-01-01', 3),
('2022-01-01', 5500.00, NULL, 3),

-- FUNCIONARIO 4
('2023-02-01', 2800.00, NULL, 4),

-- FUNCIONARIO 5
('2019-08-12', 3500.00, '2021-01-01', 5),
('2021-01-01', 4500.00, NULL, 5),

-- FUNCIONARIO 6
('2022-06-25', 3000.00, NULL, 6),

-- FUNCIONARIO 7
('2018-10-10', 5000.00, '2022-01-01', 7),
('2022-01-01', 6500.00, NULL, 7),

-- FUNCIONARIO 8
('2023-07-03', 3200.00, NULL, 8),

-- FUNCIONARIO 9
('2021-11-11', 2800.00, '2023-01-01', 9),
('2023-01-01', 3500.00, NULL, 9),

-- FUNCIONARIO 10
('2020-09-09', 4500.00, NULL, 10),

-- FUNCIONARIO 11
('2022-04-14', 2600.00, NULL, 11),

-- FUNCIONARIO 12
('2024-01-08', 3000.00, NULL, 12)
GO

INSERT INTO FALTA (MOTIVO, DATA_FALTA, ID_FUNCIONARIO) VALUES
-- FUNCIONARIO 1
('Doença', '2023-03-10', 1),
('Consulta médica', '2023-08-22', 1),

-- FUNCIONARIO 2
('Atraso', '2022-07-05', 2),

-- FUNCIONARIO 3
('Doença', '2021-05-12', 3),
('Problemas pessoais', '2022-11-18', 3),
('Consulta médica', '2023-06-01', 3),

-- FUNCIONARIO 4
-- sem faltas

-- FUNCIONARIO 5
('Doença', '2020-02-20', 5),
('Doença', '2021-03-15', 5),

-- FUNCIONARIO 6
('Atraso', '2023-01-10', 6),

-- FUNCIONARIO 7
('Falta não justificada', '2022-09-09', 7),
('Atraso', '2023-04-02', 7),

-- FUNCIONARIO 8
('Consulta médica', '2023-10-11', 8),

-- FUNCIONARIO 9
('Doença', '2022-02-14', 9),
('Problemas pessoais', '2023-03-30', 9),

-- FUNCIONARIO 10
-- sem faltas

-- FUNCIONARIO 11
('Atraso', '2022-06-20', 11),

-- FUNCIONARIO 12
('Doença', '2024-02-01', 12)
GO

INSERT INTO TELEFONE_FUNC (TIPO, NUMERO, ID_FUNCIONARIO) VALUES
-- FUNCIONARIO 1
('CEL', '11987654321', 1),
('RES', '1134567890', 1),

-- FUNCIONARIO 2
('CEL', '11991234567', 2),

-- FUNCIONARIO 3
('CEL', '11999887766', 3),
('COM', '1133224455', 3),

-- FUNCIONARIO 4
('CEL', '11993456789', 4),

-- FUNCIONARIO 5
('CEL', '11995556666', 5),
('RES', '1133778899', 5),

-- FUNCIONARIO 6
('CEL', '11996667777', 6),

-- FUNCIONARIO 7
('CEL', '11997778888', 7),
('COM', '1133445566', 7),

-- FUNCIONARIO 8
('CEL', '11998889999', 8),

-- FUNCIONARIO 9
('CEL', '11990001111', 9),

-- FUNCIONARIO 10
('CEL', '11991112222', 10),

-- FUNCIONARIO 11
('CEL', '11992223333', 11),

-- FUNCIONARIO 12
('CEL', '11993334444', 12),
('RES', '1133556677', 12)
GO
