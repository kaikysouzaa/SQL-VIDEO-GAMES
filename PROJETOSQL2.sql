CREATE DATABASE projeto2;
USE Projeto2;

#Desafio 1: Quais são os 10 jogos com as vendas globais mais altas?
#SELECT  Name ,MAX(Global_Sales)
#FROM VGSALES
#GROUP BY NAME
#LIMIT 10;

#Desafio 2: Qual é o total de vendas globais de todos os jogos?
#SELECT SUM(Global_Sales) as VendasTotais
#FROM VGSALES;

#Desafio 3: Qual é a plataforma com mais jogos no dataset?
Select Platform, count(Name) as VendasPlataforma
from VGSALES
GROUP BY Platform;

#Desafio 4: Quais são os gêneros de jogos com a média de vendas globais mais alta?
select Genre, avg(Global_Sales)
from VGSALES
GROUP BY Genre;

#Desafio 5: Quais são os jogos lançados após o ano 2010 com vendas globais superiores a 1 milhão?
select name, sum(global_sales)
from Vgsales
where Year > 2010
group by name;

#Desafio 6: Quais são os editores (publishers) com mais de 100 jogos no dataset?
select publisher, count(*) as quantidade_jogos
from vgsales
group by PUBLISHER
HAVING COUNT(*) > 100;

#Desafio 7: Quais são os jogos que contêm a palavra "Mario" no nome?
SELECT NAME as JOGOS_MARIO
FROM VGSALES
WHERE NAME LIKE '%MARIO%';

#Desafio 8: Qual é o ano com o maior número de lançamentos de jogos?
SELECT Year, COUNT(*) AS QUANTIDADE_LANCAMENTOS
FROM VGSALES
GROUP BY YEAR
ORDER BY QUANTIDADE_LANCAMENTOS DESC
LIMIT 1;

#Desafio 9: Quais são os gêneros de jogos com vendas globais entre 200 e 500 milhões?
SELECT GENRE, SUM(GLOBAL_SALES) AS TOTAL_VENDAS_GLOBAIS
FROM VGSALES
group by GENRE
HAVING  TOTAL_VENDAS_GLOBAIS BETWEEN 200.0 AND 500.0;

#Desafio 10: Quais são os editores (publishers) com a Média de vendas globais superior a 2 milhões?
SELECT PUBLISHER, AVG(GLOBAL_SALES) AS MEDIA_VENDAS_GLOBAIS
FROM VGSALES
group by PUBLISHER
HAVING AVG(GLOBAL_SALES) > 2.0

