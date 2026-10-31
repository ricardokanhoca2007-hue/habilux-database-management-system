USE HABILUX;

# View da tabela que mostra todo o Material ordernando o Stock por ordem decrescente

CREATE VIEW Stock_Material
AS
SELECT Descricao, Nome, Stock "Stock em Unidades", Custo "Custo (€)"
FROM MATERIAL
INNER JOIN TECNICO ON MATERIAL.ID_Tecnico = TECNICO.ID_Tecnico
ORDER BY Stock DESC;


# View da tabela que mostra as Manutenções

CREATE VIEW Manutencoes
AS
SELECT Tipo_Manutencao "Tipo de Manutenção", DATE_FORMAT(Data_Inicio, "%d-%m-%Y") "Data de Início", DATE_FORMAT(Data_Fim, "%d-%m-%Y") "Data de Finalização", Custo "Custo (€)", ID_Tecnico, ID_Manutencao
FROM MANUTENCAO
ORDER BY Data_Inicio;


# View da tabela que mostra os pagamentos que ainda não foram realizados

CREATE VIEW Pagamentos_Pendentes
AS
SELECT ID_Contrato, ID_Cliente, ID_Apartamento, Valor "Valor (€)", DATE_FORMAT(Data_Inicio, "%d-%m-%Y") "Data de Entrada", DATE_FORMAT(Data_Fim, "%d-%m-%Y") "Data de Saída", Estado_Pagamento "Estado do Pagamento"
FROM CONTRATO
WHERE Estado_Pagamento = "Nao pago" OR Estado_Pagamento= "Pendente"
ORDER BY Data_Inicio;


# View da tabela que ordena os apartamentos por número de vezes que foram alugados e o lucro dos mesmos

CREATE VIEW Estatisticas_Apartamento
AS
SELECT COUNT(ID_Apartamento) "Número de vezes que foi alugado", ID_Apartamento, SUM(Valor) Lucro
FROM CONTRATO
GROUP BY ID_Apartamento, Valor, ID_Apartamento
ORDER BY COUNT(ID_Apartamento) DESC, Valor DESC;


# View da tabela que ordena os apartamentos por número de manutenções e as despesas dos mesmos

CREATE VIEW Estatisticas_Manutencao_Apart
AS
SELECT COUNT(ID_Apartamento) "Número de Manutenções realizadas", ID_Apartamento, SUM(Custo) "Custo das Manutenções"
FROM MANUTENCAO
LEFT JOIN MANUTENCAO_APART ON MANUTENCAO.ID_Manutencao = MANUTENCAO_APART.ID_Manutencao
WHERE ID_Apartamento IS NOT NULL
GROUP BY ID_Apartamento
ORDER BY COUNT(ID_Apartamento) DESC, SUM(Custo) DESC;


# View da tabela que mostra quanto os clientes gastaram ao todo e o número de visitas

CREATE VIEW Estatisticas_Cliente
AS
SELECT CONTRATO.ID_Cliente, Nome, SUM(Valor) as "Valor Total", COUNT(CONTRATO.ID_Cliente) "Número de Visitas"
FROM CONTRATO
INNER JOIN CLIENTE ON CONTRATO.ID_Cliente = CLIENTE.ID_Cliente
GROUP BY ID_Cliente, Nome;


# View da tabela que mostra os contratos

CREATE VIEW Contratos
AS
SELECT ID_Contrato, ID_Cliente, ID_Apartamento, Valor "Valor (€)", DATE_FORMAT(Data_Inicio, "%d-%m-%Y") "Data de Entrada", DATE_FORMAT(Data_Fim, "%d-%m-%Y") "Data de Saída", Estado_Pagamento "Estado do Pagamento"
FROM CONTRATO;


# View da tabela que mostra os clientes

CREATE VIEW Clientes
AS
SELECT ID_Cliente "Número de Cliente", Nome, Telefone, Email, Forma_Pagamento "Método de Pagamento"
FROM CLIENTE
ORDER BY ID_Cliente;


# View da tabela que mostra os Apartamentos

CREATE VIEW Apartamentos
AS
SELECT Tipologia, Cidade, Codigo_postal "Código Postal", Rua, Numero Número, Extras, Preco "Preço (€)", Disponibilidade, ID_Apartamento
FROM APARTAMENTO
ORDER BY Cidade, Tipologia, Preco;


# Criação de Utilizadores

CREATE USER IF NOT EXISTS "Marco Paulo" @localhost
IDENTIFIED BY "CHANGE_ME_BEFORE_USE"
PASSWORD EXPIRE INTERVAL 15 DAY;

CREATE USER IF NOT EXISTS "Manuel Gomes" @localhost
IDENTIFIED BY "CHANGE_ME_BEFORE_USE"
PASSWORD EXPIRE INTERVAL 15 DAY;


# Criação de roles

CREATE ROLE TecnicoBD;

CREATE ROLE GerenteMan;


# Atribuição de privilégios às roles

GRANT ALL PRIVILEGES ON HABILUX 
TO TecnicoBD;

GRANT ALL ON HABILUX.MANUTENCAO
TO GerenteMan;


# Atribuição das Roles aos Utilizadores

GRANT TecnicoBD TO "Marco Paulo" @localhost;

GRANT GerenteMan TO "Manuel Gomes" @localhost;