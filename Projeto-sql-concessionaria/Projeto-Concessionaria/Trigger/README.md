🚗 Trigger de Atualização de Situação do Carro – SQL Server
🎯 Objetivo

Esta trigger foi criada para garantir a atualização automática do status de um veículo sempre que uma nova venda é registrada no sistema da concessionária.

O principal propósito é manter a integridade do estoque de veículos, evitando que um carro já vendido permaneça marcado como disponível.

⚙️ Funcionamento da Trigger

A trigger TRG_ATUALIZA_SITUACAO_CARRO é executada:

Após uma inserção (AFTER INSERT) na tabela VENDAS

Ou seja, sempre que uma nova venda é registrada, a trigger é disparada automaticamente pelo SQL Server.

🔄 Processo Executado

Quando ativada, a trigger realiza as seguintes etapas:

Identifica os registros recém-inseridos na tabela VENDAS por meio da tabela lógica inserted

Localiza o veículo correspondente na tabela CARRO

Atualiza o campo SITUACAO do carro para:

VENDIDO

Exibe a mensagem:

TRIGGER EXECUTADA COM SUCESSO

👨‍💻 Autor

Luís Felipe Santos Oliva
Projeto desenvolvido para portfólio na área de Banco de Dados e Análise de Dados.
