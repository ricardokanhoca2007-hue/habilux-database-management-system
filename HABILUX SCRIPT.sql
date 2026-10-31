DROP DATABASE IF EXISTS HABILUX;

CREATE DATABASE HABILUX;

USE HABILUX;


CREATE TABLE CLIENTE ( 
	ID_Cliente VARCHAR(15) PRIMARY KEY, 
	Nome VARCHAR(50),
	Telefone VARCHAR(15),
	Email VARCHAR(30),
	Forma_Pagamento VARCHAR(30)
    );
    

CREATE TABLE ESPACO_LAZER ( 
	ID_EspLaz VARCHAR(15) PRIMARY KEY, 
	Tipo VARCHAR(30),
	Rua VARCHAR(50),
	Numero INT,
	Codigo_Postal VARCHAR(8),
	Cidade VARCHAR(30)
    );
		

CREATE TABLE TECNICO ( 
	ID_Tecnico VARCHAR(15) PRIMARY KEY, 
    Nome VARCHAR(30),
	Especialidade VARCHAR(30),
	Email VARCHAR(50),
	Numero VARCHAR(15),
	Codigo_Postal VARCHAR(8),
	Cidade VARCHAR(30)
    );
            
    
CREATE TABLE MANUTENCAO (
	ID_Manutencao VARCHAR(15) PRIMARY KEY,
	ID_Tecnico VARCHAR(15), 
    Tipo_Manutencao VARCHAR(50),
    Custo INT,
	Data_Inicio DATE,
    Data_Fim DATE,
    FOREIGN KEY (ID_Tecnico) REFERENCES TECNICO (ID_Tecnico)
	);


CREATE TABLE EXTRA_COMB (
    ID_Comb VARCHAR(15) PRIMARY KEY,
    EXTRA1 VARCHAR(15),
    EXTRA2 VARCHAR(15),
    FOREIGN KEY (EXTRA1) REFERENCES ESPACO_LAZER (ID_EspLaz),
    FOREIGN KEY (EXTRA2) REFERENCES ESPACO_LAZER (ID_EspLaz)
    );
    
    
CREATE TABLE APARTAMENTO ( 
	ID_Apartamento VARCHAR(15) PRIMARY KEY, 
	Tipologia VARCHAR(2) CHECK (Tipologia="T0" OR Tipologia="T1" OR Tipologia="T2" OR Tipologia="T3"),
	Preco INT,
	Disponibilidade BOOLEAN,
	ID_Comb VARCHAR(15),
	Rua VARCHAR(50),
	Numero INT,
	Codigo_postal VARCHAR(8),
	Cidade VARCHAR(30),
    FOREIGN KEY (ID_Comb) REFERENCES EXTRA_COMB (ID_Comb)
    );
           

CREATE TABLE CONTRATO (
	ID_Contrato VARCHAR(15) PRIMARY KEY,
    ID_Cliente VARCHAR(15),
    ID_Apartamento VARCHAR(15),
    Valor INT,
    Data_Inicio DATE,
    Data_Fim DATE,
    Estado_Pagamento VARCHAR(15) CHECK (Estado_Pagamento="Pago" OR Estado_Pagamento="Nao pago" OR Estado_Pagamento="Pendente"),
	FOREIGN KEY (ID_Cliente) REFERENCES CLIENTE (ID_Cliente),
    FOREIGN KEY (ID_Apartamento) REFERENCES APARTAMENTO (ID_Apartamento)    
	);
    
    
CREATE TABLE LAZER_CLIENTE (
	ID_Cliente VARCHAR(15),
	ID_EspLaz VARCHAR(15),
    FOREIGN KEY (ID_Cliente) REFERENCES CLIENTE (ID_Cliente),
    FOREIGN KEY (ID_EspLaz) REFERENCES ESPACO_LAZER (ID_EspLaz),
    PRIMARY KEY (ID_Cliente, ID_EspLaz)
    );
    
    
CREATE TABLE MATERIAL (
	ID_Material VARCHAR(15) PRIMARY KEY,
    ID_Tecnico VARCHAR(15),
    Descricao VARCHAR(80),
    Custo INT,
    Stock INT,
    FOREIGN KEY (ID_Tecnico) REFERENCES TECNICO (ID_Tecnico)
	);

    
 CREATE TABLE MATERIAL_LAZER (
	ID_Material VARCHAR(15),
	ID_EspLaz VARCHAR(15),
	FOREIGN KEY (ID_Material) REFERENCES MATERIAL (ID_Material),
    FOREIGN KEY (ID_EspLaz) REFERENCES ESPACO_LAZER (ID_EspLaz),
    PRIMARY KEY (ID_Material, ID_EspLaz)
    );   


 CREATE TABLE MATERIAL_MANUTENCAO (
	ID_Material VARCHAR(15),
	ID_Manutencao VARCHAR(15),
    FOREIGN KEY (ID_Material) REFERENCES MATERIAL (ID_Material),
    FOREIGN KEY (ID_Manutencao) REFERENCES MANUTENCAO (ID_Manutencao),
    PRIMARY KEY (ID_Material, ID_Manutencao)
    );  


 CREATE TABLE TECNICO_MATERIAL (
	ID_Material VARCHAR(15),
	ID_Tecnico VARCHAR(15),
	FOREIGN KEY (ID_Tecnico) REFERENCES TECNICO (ID_Tecnico),
    FOREIGN KEY (ID_Material) REFERENCES MATERIAL (ID_Material),
    PRIMARY KEY (ID_Material, ID_Tecnico)
    );  


 CREATE TABLE TECNICO_LAZER (
	ID_Tecnico VARCHAR(15),
	ID_EspLaz VARCHAR(15),
	FOREIGN KEY (ID_Tecnico) REFERENCES TECNICO (ID_Tecnico),
    FOREIGN KEY (ID_EspLaz) REFERENCES ESPACO_LAZER (ID_EspLaz),
    PRIMARY KEY (ID_Tecnico, ID_EspLaz)
    );  

          
           
CREATE TABLE TECNICO_MANUTENCAO (
	ID_Manutencao VARCHAR(15),
	ID_Tecnico VARCHAR(15),
	FOREIGN KEY (ID_Tecnico) REFERENCES TECNICO (ID_Tecnico),
    FOREIGN KEY (ID_Manutencao) REFERENCES MANUTENCAO (ID_Manutencao),
    PRIMARY KEY (ID_Manutencao, ID_Tecnico)
    );  


CREATE TABLE MANUTENCAO_APART (
	ID_Manutencao VARCHAR(15),
	ID_Apartamento VARCHAR(15),
	FOREIGN KEY (ID_Manutencao) REFERENCES MANUTENCAO (ID_Manutencao),
    FOREIGN KEY (ID_Apartamento) REFERENCES APARTAMENTO (ID_Apartamento),
    PRIMARY KEY (ID_Manutencao, ID_Apartamento)
    );  
           

CREATE TABLE MANUTENCAO_LAZER (
	ID_Manutencao VARCHAR(15),
	ID_EspLaz VARCHAR(15),
	FOREIGN KEY (ID_Manutencao) REFERENCES MANUTENCAO (ID_Manutencao),
    FOREIGN KEY (ID_EspLaz) REFERENCES ESPACO_LAZER (ID_EspLaz),
    PRIMARY KEY (ID_Manutencao, ID_EspLaz)
    );  
    
    
# UPDATE 1 ON 02/05/25

# UPDATE 2 ON 14/05/25
           











