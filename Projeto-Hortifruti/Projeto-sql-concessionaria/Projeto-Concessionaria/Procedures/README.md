# 💰 Procedure de Fechamento de Vendas – SQL Server

## 🎯 Objetivo

Esta procedure foi desenvolvida para realizar o **fechamento de uma venda de veículo** de forma segura e controlada dentro do banco de dados da concessionária.

O foco da implementação é garantir:

* Integridade das informações
* Prevenção de vendas duplicadas do mesmo veículo
* Registro correto da transação de venda
* Atualização automática do status do carro

---

## ⚙️ Funcionamento da Procedure

A procedure `FECHAMENTO_VENDAS` recebe como parâmetros:

* **@DATA_VENDA** → data da venda
* **@VALOR** → valor total da venda
* **@ID_CLIENTE** → cliente responsável pela compra
* **@ID_VENDEDOR** → vendedor que realizou a venda
* **@ID_PAGAMENTO** → forma de pagamento utilizada
* **@ID_CARRO** → veículo vendido

---

## 🔎 Validação de Regra de Negócio

Antes de registrar a venda, a procedure verifica:

* Se o carro informado **já está com status “VENDIDO”**

Caso esteja, a execução é interrompida com erro:

```
Este carro já foi vendido
```

Isso impede:

* Duplicidade de vendas
* Inconsistência no estoque de veículos
* Problemas financeiros ou operacionais

---

## 📝 Registro da Venda

Se o carro estiver disponível:

1. A venda é inserida na tabela **VENDAS**
2. O **ID da nova venda** é capturado com `SCOPE_IDENTITY()`
3. O status do carro é atualizado para **VENDIDO** na tabela **CARRO**

Esse fluxo garante que:

* A venda só ocorre se o carro estiver disponível
* O estoque é atualizado automaticamente
* O identificador da venda pode ser utilizado por outros processos

---

## 📤 Retorno da Procedure

Ao final da execução, a procedure retorna:

* **ID_NOVA_VENDA** → identificador da venda recém-criada

Esse retorno permite integração com:

* Sistemas de pagamento
* Relatórios de vendas
* Processos de auditoria

---

## 👨‍💻 Autor

**Luís Felipe Santos Oliva**
Projeto desenvolvido para portfólio na área de **Banco de Dados e Análise de Dados**.

