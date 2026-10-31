USE HABILUX;

# TABELA que mostra quanto os clientes gastaram ao todo e o número de visitas

SELECT CONTRATO.ID_Cliente, Nome, SUM(Valor) as "Valor Total", COUNT(CONTRATO.ID_Cliente) "Número de Visitas"
FROM CONTRATO
INNER JOIN CLIENTE ON CONTRATO.ID_Cliente = CLIENTE.ID_Cliente
GROUP BY ID_Cliente, Nome;


# TABELA que mostra o valor máximo teórico de faturação tendo todos os apartamentos alugados durate 1 mês (30 dias)

SELECT SUM(Preco*30) "Lucro máxima possível em 1 mês"
FROM APARTAMENTO;


# TABELA que mostra o custo de todas as manutenções feitas em Janeiro e Fevereiro de 2025

SELECT SUM(Custo) "Custo de todas as Manutenções feitas em Janeiro e Fevereiro de 2025"
FROM Manutencao
WHERE Data_Fim BETWEEN '2025-01-01' AND '2025-02-28';


# TABELA que mostra material de custo mais elevado o de menor valor e a média do custo de todos

SELECT MAX(Custo), MIN(Custo), AVG(Custo)
FROM Material;


# TABELA que ordena os apartamentos por número de vezes que foram alugados e o lucro dos mesmos

SELECT COUNT(ID_Apartamento) "Número de vezes que foi alugado", ID_Apartamento, SUM(Valor) Lucro
FROM CONTRATO
GROUP BY ID_Apartamento, Valor, ID_Apartamento
ORDER BY COUNT(ID_Apartamento) DESC, Valor DESC;


# TABELA que ordena os apartamentos por número de manutenções e as despesas dos mesmos

SELECT COUNT(ID_Apartamento) "Número de Manutenções realizadas", ID_Apartamento, SUM(Custo) "Custo das Manutenções"
FROM MANUTENCAO
LEFT JOIN MANUTENCAO_APART ON MANUTENCAO.ID_Manutencao = MANUTENCAO_APART.ID_Manutencao
WHERE ID_Apartamento IS NOT NULL
GROUP BY ID_Apartamento
ORDER BY COUNT(ID_Apartamento) DESC, SUM(Custo) DESC;


# TABELA que mostra apartamentos entre 100 e 150 por dia, com os seus extras e a disponibilidade que é verificada conforme a data atual e a data dos contratos

SELECT APARTAMENTO.ID_Apartamento, Tipologia, Cidade, Rua, Numero AS "Número", ID_Comb, Preco AS "Preço (€)", 
    IF(MAX(IF(CURDATE() BETWEEN CONTRATO.Data_Inicio AND CONTRATO.Data_Fim, 1, 0)) = 1, 'Ocupado', 'Disponível') AS Disponibilidade
FROM APARTAMENTO 
LEFT JOIN CONTRATO ON APARTAMENTO.ID_Apartamento = CONTRATO.ID_Apartamento
WHERE Preco BETWEEN 100 AND 150
GROUP BY APARTAMENTO.ID_Apartamento, Tipologia, Cidade, Rua, Numero, ID_Comb, Preco
ORDER BY Disponibilidade, Preco, Cidade, Tipologia;







