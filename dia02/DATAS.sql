-- Databricks notebook source
SELECT '2023-01-01' -- ano-mes-dia

-- COMMAND ----------

-- DBTITLE 1,Somando Dias
SELECT date_add('2023-01-01', 30) -- ano-mes-dia

-- COMMAND ----------

-- DBTITLE 1,Forma 1 para subtrair dias
SELECT date_add('2023-01-01', -15) -- ano-mes-dia

-- COMMAND ----------

-- DBTITLE 1,Forma 2 para subtrair dias
SELECT date_sub('2023-01-01', 15)

-- COMMAND ----------

-- DBTITLE 1,Navegando em meses
SELECT add_months('2023-01-01', 12)

-- COMMAND ----------

-- DBTITLE 1,Extraindo o ano
SELECT year('2023-03-01')

-- COMMAND ----------

-- DBTITLE 1,Extraindo o mês
SELECT month('2023-03-01')

-- COMMAND ----------

-- DBTITLE 1,Extraindo o dia
SELECT day('2023-03-01')

-- COMMAND ----------

SELECT dayofweek('2023-03-01')

-- COMMAND ----------

-- DBTITLE 1,Diferença de datas em dias
SELECT datediff('2023-06-01', '2023-01-01')

-- COMMAND ----------

-- DBTITLE 1,Diferença entre meses
SELECT months_between('2023-06-01', '2023-01-01')

-- COMMAND ----------

SELECT 
  idPedido
  ,idCliente
  ,dtPedido
  ,dtEntregue
  ,date_diff(dtEntregue, dtPedido) as diasEntreEntregaPedido
FROM silver.olist.pedido
limit 10

-- COMMAND ----------


