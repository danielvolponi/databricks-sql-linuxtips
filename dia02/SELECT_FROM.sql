-- Databricks notebook source
-- DBTITLE 1,Consultando Tabelas
SELECT *
FROM silver.olist.pedido
LIMIT 10

-- COMMAND ----------

-- DBTITLE 1,Todas Colunas + 1
SELECT 
  *
  ,vlPreco + vlFrete as vlTotal
FROM silver.olist.item_pedido
LIMIT 10

-- COMMAND ----------

SELECT 
  idPedido
  ,idProduto
  ,vlPreco
  ,vlFrete
  ,vlPreco + vlFrete AS vlTotal
FROM silver.olist.item_pedido
LIMIT 10
