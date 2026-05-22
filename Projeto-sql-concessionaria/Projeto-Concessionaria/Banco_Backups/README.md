🚗 Projeto SQL Server – Concessionária com Auditoria de Vendas
🎯 Objetivo

Este projeto tem como finalidade modelar um banco de dados para uma concessionária de veículos utilizando SQL Server, incluindo um mecanismo de auditoria e backup automático das vendas por meio de triggers.

A implementação simula um cenário real de ambiente corporativo, onde é necessário garantir:

Rastreabilidade de alterações nos dados

Segurança das informações

Possibilidade de recuperação de registros modificados ou excluídos

Estrutura do Banco de Dados

O projeto contempla:

Criação do banco de dados principal da concessionária

Tabelas relacionadas a veículos, clientes e vendas

Inserção de dados para testes

Consultas SQL para análise das informações

Banco/Tabela de backup de vendas para auditoria histórica

🔄 Auditoria de Vendas com Trigger

Foi implementada uma trigger de auditoria responsável por registrar automaticamente todas as alterações realizadas na tabela de vendas.

Operações monitoradas

A trigger captura e armazena no histórico:

INSERT → novas vendas registradas

UPDATE → alterações em vendas existentes

DELETE → exclusão de registros de vendas

Informações gravadas no backup

A tabela de backup mantém:

Dados completos da venda

Tipo de operação realizada

Data e hora da modificação

Esse mecanismo permite:

Auditoria completa das transações

Recuperação de dados excluídos ou alterados

Controle de integridade das informações
