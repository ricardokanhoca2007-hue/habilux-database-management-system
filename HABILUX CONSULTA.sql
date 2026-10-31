USE HABILUX;

# TABELA APARTAMENTO

SELECT Tipologia, Cidade, Codigo_postal "Código Postal", Rua, Numero Número, ID_Comb, Preco "Preço (€)", Disponibilidade, ID_Apartamento
FROM APARTAMENTO
ORDER BY Cidade, Tipologia, Preco;


# TABELA CLIENTE

SELECT ID_Cliente "Número de Cliente", Nome, Telefone, Email, Forma_Pagamento "Método de Pagamento"
FROM CLIENTE
ORDER BY ID_Cliente;


# TABELA ESPACO_LAZER

SELECT Cidade, Codigo_postal "Código Postal", Rua, Numero Número, Tipo, ID_EspLaz
FROM ESPACO_LAZER
ORDER BY Cidade, Tipo;


# TABELA TECNICO

SELECT Nome, Cidade, Codigo_Postal, Especialidade, Numero Número, Email, ID_Tecnico
FROM TECNICO
ORDER BY Cidade, Especialidade; 


# TABELA MANUTENCAO

SELECT Tipo_Manutencao "Tipo de Manutenção", DATE_FORMAT(Data_Inicio, "%d-%m-%Y") "Data de Início", DATE_FORMAT(Data_Fim, "%d-%m-%Y") "Data de Finalização", Custo "Custo (€)", ID_Tecnico, ID_Manutencao
FROM MANUTENCAO
ORDER BY Data_Inicio;


# TABELA MATERIAL

SELECT ID_Material, ID_Tecnico, Descricao "Descrição", Stock "Stock em Unidades", Custo "Custo (€)"
FROM MATERIAL;


# TABELA CONTRATO

SELECT ID_Contrato, ID_Cliente, ID_Apartamento, Valor "Valor (€)", DATE_FORMAT(Data_Inicio, "%d-%m-%Y") "Data de Entrada", DATE_FORMAT(Data_Fim, "%d-%m-%Y") "Data de Saída", Estado_Pagamento "Estado do Pagamento"
FROM CONTRATO;


# TABELA EXTRA_COMB

SELECT ID_Comb, EXTRA1, EXTRA2
FROM EXTRA_COMB;


# TABELA LAZER_CLIENTE (Com o nome dos clientes e espaços que têm acesso)

SELECT LAZER_CLIENTE.ID_Cliente, Nome, LAZER_CLIENTE.ID_EspLaz, Tipo
FROM LAZER_CLIENTE 
INNER JOIN CLIENTE ON LAZER_CLIENTE.ID_Cliente = CLIENTE.ID_Cliente
INNER JOIN ESPACO_LAZER ON LAZER_CLIENTE.ID_EspLaz = ESPACO_LAZER.ID_EspLaz;


# TABELA MATERIAL_LAZER (Com a descrição dos Materiais e locais onde são usados)

SELECT MATERIAL_LAZER.ID_Material, Descricao, MATERIAL_LAZER.ID_EspLaz, Tipo
FROM MATERIAL_LAZER
INNER JOIN ESPACO_LAZER ON MATERIAL_LAZER.ID_EspLaz = ESPACO_LAZER.ID_EspLaz
INNER JOIN MATERIAL ON MATERIAL_LAZER.ID_Material = MATERIAL.ID_Material
ORDER BY ID_Material;


# TABELA MATERIAL_MANUTENCAO (Com a descrição dos Materiais e o tipo de manunteção onde foi usado)

SELECT MATERIAL_MANUTENCAO.ID_Material, Descricao, MATERIAL_MANUTENCAO.ID_Manutencao, Tipo_Manutencao
FROM MATERIAL_MANUTENCAO
INNER JOIN MATERIAL ON MATERIAL_MANUTENCAO.ID_Material = MATERIAL.ID_Material
INNER JOIN MANUTENCAO ON MATERIAL_MANUTENCAO.ID_Manutencao = MANUTENCAO.ID_Manutencao
ORDER BY ID_Material;


# TABELA TECNICO_MATERIAL (Com o nome dos Técnicos, a sua especialidade e os Materiais pelos quais são responsáveis)

SELECT TECNICO_MATERIAL.ID_Tecnico, Nome, Especialidade, TECNICO_MATERIAL.ID_Material, Descricao
FROM TECNICO_MATERIAL
INNER JOIN TECNICO ON TECNICO_MATERIAL.ID_Tecnico = TECNICO.ID_Tecnico
INNER JOIN MATERIAL ON TECNICO_MATERIAL.ID_Material = MATERIAL.ID_Material
ORDER BY ID_Tecnico;


# TABELA TECNICO_LAZER (Com o nome dos Técnicos, a sua especialidade e os locais onde realizam as suas funções)

SELECT TECNICO_LAZER.ID_Tecnico, Nome, Especialidade, TECNICO_LAZER.ID_EspLaz, Tipo
FROM TECNICO_LAZER
INNER JOIN TECNICO ON TECNICO_LAZER.ID_Tecnico = TECNICO.ID_Tecnico
INNER JOIN ESPACO_LAZER ON TECNICO_LAZER.ID_EspLaz = ESPACO_LAZER.ID_EspLaz
ORDER BY ID_Tecnico;


# TABELA TECNICO_MANUTENCAO (Com o nome dos Técnicos, a sua especialidade e as manutenções realizadas pelos mesmos)

SELECT TECNICO_MANUTENCAO.ID_Tecnico, Nome, Especialidade, TECNICO_MANUTENCAO.ID_Manutencao, Tipo_Manutencao
FROM TECNICO_MANUTENCAO
INNER JOIN TECNICO ON TECNICO_MANUTENCAO.ID_Tecnico = TECNICO.ID_Tecnico
INNER JOIN MANUTENCAO ON TECNICO_MANUTENCAO.ID_Manutencao = MANUTENCAO.ID_Manutencao
ORDER BY ID_Tecnico;


# TABELA MANUTENCAO_APART (Com a descrição do tipo de manutenção, e em qual apartamento foi feita)

SELECT MANUTENCAO_APART.ID_Manutencao, Tipo_Manutencao, ID_Apartamento
FROM MANUTENCAO_APART
INNER JOIN MANUTENCAO ON MANUTENCAO_APART.ID_Manutencao = MANUTENCAO.ID_Manutencao
ORDER BY ID_Manutencao;


# TABELA MANUTENCAO_LAZER (Com a descrição do tipo de manutenção, e em qual espaço de lazer foi feita)

SELECT MANUTENCAO_LAZER.ID_Manutencao, Tipo_Manutencao, MANUTENCAO_LAZER.ID_EspLaz, Tipo
FROM MANUTENCAO_LAZER
INNER JOIN MANUTENCAO ON MANUTENCAO_LAZER.ID_Manutencao = MANUTENCAO.ID_Manutencao
INNER JOIN ESPACO_LAZER ON MANUTENCAO_LAZER.ID_EspLaz = ESPACO_LAZER.ID_EspLaz
ORDER BY ID_Manutencao;


# Tabela que poderá ser apresentada a um cliente que procura um apartamento entre 100 e 150 euros por dia

SELECT Tipologia, Cidade, Rua, Numero Número, ID_Comb, Preco "Preço (€)", IF(IF(Disponibilidade IS NULL, FALSE, TRUE) = NULL , "Ocupado" , "Disponível") AS Disponibilidade
FROM APARTAMENTO
WHERE PRECO BETWEEN 100 AND 150 AND Disponibilidade IS NOT FALSE
ORDER BY Preco, Cidade, Tipologia;


# Tabela que mostra todas as manutenções feitas na Foz do Arelho

SELECT Tipo_Manutencao "Tipo de Manutenção", DATE_FORMAT(Data_Inicio, "%d-%m-%Y") "Data de Início", DATE_FORMAT(Data_Fim, "%d-%m-%Y") "Data de Finalização", Custo "Custo (€)"
FROM MANUTENCAO INNER JOIN MANUTENCAO_APART
ON MANUTENCAO.ID_Manutencao = MANUTENCAO_APART.ID_Manutencao
WHERE ID_Apartamento LIKE "%FA%"
ORDER BY Data_Inicio;


# Tabela que mostra todo o Material ordernando o Stock por ordem decrescente

SELECT Descricao, Nome, Stock "Stock em Unidades", Custo "Custo (€)"
FROM MATERIAL
INNER JOIN TECNICO ON MATERIAL.ID_Tecnico = TECNICO.ID_Tecnico
ORDER BY Stock DESC;


# Tabela que mostra o preço de todas as casas no Estoril por 1 semana

SELECT Tipologia, Cidade, Rua, Numero Número, ID_Comb, Preco*7 "Preço (€)", IF(IF(Disponibilidade IS NULL, FALSE, TRUE) = NULL , "Ocupado" , "Disponível") AS Disponibilidade
FROM APARTAMENTO
WHERE Cidade = "Estoril"
ORDER BY Preco, Cidade, Tipologia;


# Tabela que mostra todos os pagamentos que ainda não foram completos

SELECT ID_Contrato, ID_Cliente, ID_Apartamento, Valor "Valor (€)", DATE_FORMAT(Data_Inicio, "%d-%m-%Y") "Data de Entrada", DATE_FORMAT(Data_Fim, "%d-%m-%Y") "Data de Saída", Estado_Pagamento "Estado do Pagamento"
FROM CONTRATO
WHERE Estado_Pagamento = "Nao pago" OR Estado_Pagamento= "Pendente"
ORDER BY Data_Inicio;


# Tabela que mostra todos os Espaços de Lazer e o Stock e Tecnicos associados ao mesmo

SELECT ESPACO_LAZER.Cidade, Rua, ESPACO_LAZER.Numero Número, Tipo, Stock, Descricao, Nome
FROM ESPACO_LAZER 
INNER JOIN MATERIAL_LAZER ON ESPACO_LAZER.ID_EspLaz = MATERIAL_LAZER.ID_EspLaz
INNER JOIN MATERIAL ON MATERIAL.ID_Material = MATERIAL_LAZER.ID_Material
INNER JOIN TECNICO ON MATERIAL.ID_Tecnico = Tecnico.ID_Tecnico
ORDER BY Cidade, Tipo;



# UPDATE 1 ON 15/05/25


























