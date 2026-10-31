USE HABILUX;

INSERT INTO CLIENTE 
	Values ("202500001" , "Francisco Martins" , "000000000" , "user001@example.invalid" , "Transferência Bancária"),
		   ("202500002" , "Antônio Gonçalves" , "000000000" , "user002@example.invalid" , "Numerário"),
           ("202500003" , "Luciano Fontes" , "000000000" , "user003@example.invalid" , "Mbway"),
           ("202500004" , "Rafael Arenas" , "000000000" , "user004@example.invalid" , "Transferência Bancária"),
           ("202500005" , "Lucía Orrantia" , "000000000" , "user005@example.invalid" , "Numerário"),
           ("202500006" , "Mauro Carmo" , "000000000" , "user006@example.invalid" , "Mbway"),
           ("202500007" , "Sérgio Bonito" , "000000000" , "user007@example.invalid" , "Numerário"),
           ("202500008" , "Nieves Aybar" , "000000000" , "user008@example.invalid" , "Transferência Bancária"),
           ("202500009" , "Sienna Howells" , "000000000" , "user009@example.invalid" , "Transferência Bancária"),
           ("202500010" , "Mafalda Orriça" , "000000000" , "user010@example.invalid" , "Mbway"),
           ("202500011" , "Rui Custódio" , "000000000" , "user011@example.invalid" , "Transferência Bancária"),
           ("202500012" , "Carlos Lopes" , "000000000" , "user012@example.invalid" , "Numerário"),
           ("202500013" , "José Oropeza" , "000000000" , "user013@example.invalid" , "Numerário"),
           ("202500014" , "Manuel Borrero" , "000000000" , "user014@example.invalid" , "Transferência Bancária"),
           ("202500015" , "Dipti Saha" , "000000000" , "user015@example.invalid" , "Numerário"),
           ("202500016" , "Fernando Camarinho" , "000000000" , "user016@example.invalid" , "Numerário"),
           ("202500017" , "Andreia Cerqueira" , "000000000" , "user017@example.invalid" , "Mbway"),
           ("202500018", "Sérgio Matos" , "000000000" , "user018@example.invalid" , "Transferência Bancária"),
		   ("202500019", "Tânia Oliveira" , "000000000" , "user019@example.invalid" , "Mbway"),
           ("202500020", "Vasco Nunes" , "000000000" , "user020@example.invalid" , "Numerário");
           
           
INSERT INTO ESPACO_LAZER
	Values ("LXRE1" , "Restaurante" , "Rua da Beneficência, Avenidas Novas" , 243 , "1600-019" , "Lisboa"),
		   ("LXGIN1" , "Ginásio" , "Rua da Beneficência, Avenidas Novas" , 243 , "1600-019" , "Lisboa"),
		   ("LXRE2" , "Restaurante" , "Rua da Vitoria, Santa Maria Maior" , 42 , "1100-618" , "Lisboa"),
		   ("LXGIN2" , "Ginásio" , "Rua da Vitoria, Santa Maria Maior" , 42 , "1100-618" , "Lisboa"),
		   ("PNRE1" , "Restaurante" , "Rua de São Pedro" , 7 , "2520-234" , "Peniche"),
		   ("ESRE1" , "Restaurante" , "Rua Alfredo da Silva" , 32 , "2765-393" , "Estoril"),
		   ("ESPIS1" , "Piscina" , "Rua Alfredo da Silva" , 31 , "2765-393" , "Estoril");
           
           
INSERT INTO TECNICO
	Values 	("MG010", "Manuel Gomes", "Manutenção Geral", "user021@example.invalid" ,"000000000", "2765-377", "Lisboa"),
			("EL141", "Raul Reis", "Eletricista", "user022@example.invalid" ,"000000000", "2900-145", "Setúbal"),
            ("TV213", "Miguel Barroso", "Técnico Ventilação", "user023@example.invalid" ,"000000000", "2900-421", "Setúbal"),
            ("CC673", "António Grande", "Chef", "user024@example.invalid" ,"000000000", "2040-145", "Rio Maior"),
            ("SC101", "Filipe Lopes", "Sub-Chef", "user025@example.invalid" ,"000000000", "2040-542", "Rio Maior"),
            ("FT756", "Leonardo Pinto", "Fisioterapeuta", "user026@example.invalid" ,"000000000", "2350-322", "Torres-Novas"),
            ("PT745", "Samuel Massas", "Personal Trainer", "user027@example.invalid" ,"000000000", "2350-437", "Torres-Novas"),
            ("TEG799", "Ricky Ric", "Técnico Equipamentos Ginásio", "user028@example.invalid" ,"000000000", "2350-127", "Torres-Novas"),
            ("SM101", "Gustavo Martins", "Sommelier", "user029@example.invalid" ,"000000000", "2750-99", "Cascais"),
            ("NS911", "Afonso Santos", "Nadador-Salvador", "user030@example.invalid" ,"000000000", "2775-169", "Carcavelos"),
            ("TTI101", "Marco Paulo", "Técnico de TI", "user031@example.invalid" ,"000000000", "1405-194", "Porto"),
            ("ENF112", "João Omar", "Enfermeiro", "user032@example.invalid" ,"000000000", "1405-122", "Porto"),
            ("SE101", "Joel Carreira", "Segurança Eletrónica", "user033@example.invalid" ,"000000000", "1405-882", "Porto"),
            ("CL101", "Rebeca Carmo", "Chefe Limpeza", "user034@example.invalid" ,"000000000", "1500-145", "Amadora"),
            ("PL101", "Gertrudes Noas", "Profissional Limpeza", "user035@example.invalid" ,"000000000", "1500-145", "Amadora");
            
            
INSERT INTO MANUTENCAO
	VALUES	("MT101", "MG010", "Revisão Geral de Infraestrutura", 150, "2025-02-01", "2025-02-02"),
			("MT102", "EL141", "Revisão de Sistema Elétrico", 120, "2025-02-05", "2025-02-05"),
			("MT103", "TEG799", "Ajuste de Máquinas de Musculação", 90, "2025-03-10", "2025-03-11"),
			("MT104", "TTI101", "Atualização de Rede e Servidores", 200, "2025-04-15", "2025-04-16"),
			("MT105", "PL101", "Limpeza Técnica Pós-Obra", 70, "2025-04-20", "2025-04-20"),
			("MT106", "TV213", "Verificação de Sistemas de Ventilação", 110, "2025-05-22", "2025-05-23"),
			("MT107", "MG010", "Reparação de Portas e Fechaduras", 80, "2025-05-25", "2025-05-25"),
			("MT108", "EL141", "Instalação de Iluminação LED", 130, "2025-05-28", "2025-05-29");
            
            
INSERT INTO EXTRA_COMB
    VALUES ("LXRes1" , "LXRE1" , NULL),
           ("LXResGin1" , "LXRE1" , "LXGIN1"),
           ("LXResGin2" , "LXRE2" , "LXGIN2"),
           ("PN1" , "PNRE1" , NULL),
           ("ESPisc1" , "ESPIS1" , NULL),
           ("ESPiscRes1" , "ESPIS1" , "ESRE1");
           
           
 INSERT INTO APARTAMENTO
	Values ("LX01" , "T0" , 80 , 1 , NULL , "Rua da Beneficência, Avenidas Novas" , 243 , "1600-019" , "Lisboa"),
		   ("LX02" , "T0" , 84 , 1 , "LXRes1" , "Rua da Beneficência, Avenidas Novas" , 243 , "1600-019" , "Lisboa"),
		   ("LX03" , "T1" , 100 , 1 , "LXRes1" , "Rua da Beneficência, Avenidas Novas" , 243 , "1600-019" , "Lisboa"),
		   ("LX04" , "T1" , 100 , 1 , "LXRes1" , "Rua da Beneficência, Avenidas Novas" , 243 , "1600-019" , "Lisboa"),
		   ("LX05" , "T2" , 120 , 1 , "LXRes1" , "Rua da Beneficência, Avenidas Novas" , 243 , "1600-019" , "Lisboa"),
		   ("LX06" , "T2" , 135 , 1 , "LXResGin1" , "Rua da Beneficência, Avenidas Novas" , 243 , "1600-019" , "Lisboa"),
		   ("LX07" , "T3" , 200 , 1 , "LXResGin2" , "Rua da Vitoria, Santa Maria Maior" , 41 , "1100-618" , "Lisboa"),
		   ("LX08" , "T3" , 200 , 1 , "LXResGin2" , "Rua da Vitoria, Santa Maria Maior" , 41 , "1100-618" , "Lisboa"),
		   ("PN01" , "T1" , 115 , 1 , "PN1" , "Rua de São Pedro" , 8 , "2520-234" , "Peniche"),
		   ("PN02" , "T1" , 115 , 1 , "PN1" , "Rua de São Pedro" , 8 , "2520-234" , "Peniche"),
		   ("ES01" , "T1" , 100 , 1 , "ESPisc1" , "Rua Alfredo da Silva" , 31 , "2765-393" , "Estoril"),
		   ("ES02" , "T1" , 120 , 1 , "ESPiscRes1" , "Rua Alfredo da Silva" , 31 , "2765-393" , "Estoril"),
		   ("ES03" , "T2" , 140 , 1 , "ESPisc1" , "Rua Alfredo da Silva" , 31 , "2765-393" , "Estoril"),
		   ("ES04" , "T2" , 160 , 1 , "ESPiscRes1" , "Rua Alfredo da Silva" , 31 , "2765-393" , "Estoril"),
		   ("FA01" , "T0" , 60 , 1 , NULL , "Rua Dom Carlos I" , 64 , "2500-483" , "Foz do Arelho"),
		   ("FA02" , "T0" , 60 , 1 , NULL , "Rua Dom Carlos I" , 64 , "2500-483" , "Foz do Arelho");          
           
           
INSERT INTO CONTRATO 
	VALUES 
			("C001", "202500001", "LX01", 500, "2024-01-01", "2024-01-31", "Pago"),
			("C002", "202500002", "LX02", 520, "2024-02-01", "2024-02-28", "Pago"),
			("C003", "202500003", "LX03", 600, "2024-03-01", "2024-03-31", "Pago"),
			("C004", "202500004", "LX04", 600, "2024-03-15", "2024-04-14", "Pago"),
			("C005", "202500005", "LX05", 720, "2024-04-01", "2024-04-30", "Pago"),
			("C006", "202500006", "LX06", 810, "2024-04-01", "2024-04-30", "Pago"),
			("C007", "202500007", "LX07", 1200, "2024-05-01", "2024-05-31", "Pago"),
			("C008", "202500008", "LX08", 1200, "2024-05-01", "2024-05-31", "Pago"),
			("C009", "202500009", "PN01", 690, "2024-06-01", "2024-06-30", "Pago"),
			("C010", "202500010", "PN02", 690, "2024-06-01", "2024-06-30", "Pago"),
			("C011", "202500011", "ES01", 600, "2024-07-01", "2024-07-31", "Pago"),
			("C012", "202500012", "ES02", 720, "2024-07-01", "2024-07-31", "Pago"),
			("C013", "202500013", "ES03", 840, "2024-08-01", "2024-08-31", "Pago"),
			("C014", "202500014", "ES04", 960, "2024-08-01", "2024-08-31", "Pago"),
			("C015", "202500015", "FA01", 360, "2024-09-01", "2024-09-30", "Pago"),
			("C016", "202500016", "FA02", 360, "2024-09-01", "2024-09-30", "Pago"),
			("C017", "202500017", "LX01", 500, "2024-10-01", "2024-10-31", "Pago"),
			("C018", "202500018", "LX02", 520, "2024-10-01", "2024-10-31", "Pago"),
			("C019", "202500019", "LX03", 600, "2024-11-01", "2024-11-30", "Nao pago"),
			("C020", "202500020", "LX04", 600, "2024-11-01", "2024-11-30", "Pago"),
			("C021", "202500001", "LX01", 500, "2025-01-01", "2025-01-30", "Pendente"),
			("C022", "202500004", "PN01", 690, "2025-02-01", "2025-02-27", "Nao pago"),
			("C023", "202500011", "ES01", 600, "2025-05-01", "2025-05-30", "Nao pago"),
			("C024", "202500006", "LX04", 600, "2025-05-01", "2025-05-30", "Pago"),
			("C025", "202500013", "LX08", 1200, "2025-05-01", "2025-05-30", "Nao Pago"),
			("C026", "202500015", "FA01", 360, "2025-05-01", "2025-05-30", "Pendente");

            
            
INSERT INTO LAZER_CLIENTE 
	VALUES	("202500001", "LXRE1"),  
			("202500002", "LXGIN1"), 
			("202500003", "LXRE2"), 
			("202500004", "LXGIN2"), 
			("202500005", "PNRE1"),  
			("202500006", "ESRE1"),  
			("202500007", "ESPIS1"), 
			("202500008", "LXRE1"),  
			("202500009", "LXGIN1"),
			("202500010", "LXRE2");  
            
            
INSERT INTO MATERIAL 
	VALUES ("M001", "MG010", "Ferramentas diversas para manutenção hoteleira", 50, 100),
		   ("M002", "EL141", "Material para instalação e reparação de circuitos elétricos", 150, 75),
		   ("M003", "TV213", "Equipamentos de reparações e diagnóstico", 80, 50),
		   ("M004", "CC673", "Utensílios de cozinha", 200, 30),
		   ("M005", "SC101", "Alimentos", 120, 60),
		   ("M006", "FT756", "Equipamento de Fisioterapia", 75, 120),
		   ("M007", "PT745", "Equipamento para registos e medições", 90, 85),
		   ("M008", "TEG799", "Ferramentas Básicas e Equipamento de reposição", 180, 40),
		   ("M009", "SM101", "Saca-Rolhas, Termómetro Infravermelhos, e Cálices", 110, 70),
		   ("M010", "NS911", "Boias, Coletes Salva-Vida e Material de CPR", 70, 150),
		   ("M011", "TTI101", "Routers, Switches e Hubs", 220, 25),
		   ("M012", "ENF112", "Kits de Primeiro Socorro", 95, 80),
		   ("M013", "SE101", "Equipamento de Vigilância", 130, 60),
		   ("M014", "CL101", "Instrumentos para limpeza", 40, 200),
		   ("M015", "PL101", "Produtos para higienização", 60, 90);
           
           
INSERT INTO MATERIAL_LAZER
	VALUES ("M004", "LXRE1"),
		   ("M004", "LXRE2"),
		   ("M004", "PNRE1"),
           ("M004", "ESRE1"),
           ("M005", "LXRE1"),
		   ("M005", "LXRE2"),
		   ("M005", "PNRE1"),
           ("M005", "ESRE1"),
		   ("M006", "LXGIN1"),
           ("M006", "LXGIN2"),
		   ("M007", "LXGIN1"),
           ("M007", "LXGIN2"),
		   ("M009", "LXRE1"),
		   ("M009", "LXRE2"),
		   ("M009", "PNRE1"),
           ("M009", "ESRE1"),
		   ("M010", "ESPIS1"),
		   ("M012", "LXRE1"),
           ("M012", "LXGIN1"),
           ("M012", "LXRE2"),
           ("M012", "LXGIN2"),
           ("M012", "ESRE1"),
           ("M012", "ESPIS1"),
		   ("M013", "LXRE1"),
           ("M013", "LXGIN1"),
           ("M013", "LXRE2"),
           ("M013", "LXGIN2"),
           ("M013", "ESRE1"),
           ("M013", "ESPIS1");
           
           
INSERT INTO MATERIAL_MANUTENCAO
	VALUES ("M001", "MT101"),  
		   ("M002", "MT102"),  
		   ("M008", "MT103"),  
		   ("M011", "MT104"),
		   ("M014", "MT105"),  
		   ("M015", "MT105"),
		   ("M003", "MT106"),  
		   ("M001", "MT107"),  
		   ("M002", "MT108");
           
           
 INSERT INTO TECNICO_MATERIAL
	VALUES ("M001", "MG010"),
		   ("M002", "EL141"),
		   ("M003", "TV213"),
		   ("M004", "CC673"),
		   ("M005", "SC101"),
		   ("M006", "FT756"),
		   ("M007", "PT745"),
		   ("M008", "TEG799"),
		   ("M009", "SM101"),
		   ("M010", "NS911"),
		   ("M011", "TTI101"),
		   ("M012", "ENF112"),
		   ("M013", "SE101"),
		   ("M014", "CL101"),
		   ("M015", "PL101");
           
           
INSERT INTO TECNICO_LAZER
	VALUES ("MG010" , "LXRE1"),
		   ("MG010" , "LXGIN1"),
		   ("MG010" , "LXRE2"),
		   ("MG010" , "LXGIN2"),
		   ("MG010" , "PNRE1"),
		   ("MG010" , "ESRE1"),
		   ("MG010" , "ESPIS1"),
           ("EL141" , "LXRE1"),
		   ("EL141" , "LXGIN1"),
		   ("EL141" , "LXRE2"),
		   ("EL141" , "LXGIN2"),
		   ("EL141" , "PNRE1"),
		   ("EL141" , "ESRE1"),
		   ("EL141" , "ESPIS1"),
		   ("TV213" , "LXRE1"),
		   ("TV213" , "LXRE2"),
		   ("TV213" , "PNRE1"),
		   ("TV213" , "ESRE1"),
 		   ("CC673" , "LXRE1"),
		   ("CC673" , "LXRE2"),
		   ("SC101" , "PNRE1"),
		   ("SC101" , "ESRE1"),
           ("FT756" , "LXGIN1"),
           ("FT756" , "LXGIN2"),
           ("PT745" , "LXGIN1"),
           ("PT745" , "LXGIN2"),
		   ("TEG799" , "LXGIN1"),
           ("TEG799" , "LXGIN2"),
  		   ("SM101" , "ESRE1"),   
   		   ("NS911" , "ESPIS1"); 
           
           
INSERT INTO TECNICO_MANUTENCAO
	VALUES ("MT101", "MG010"),
		   ("MT102", "EL141"),
		   ("MT103", "TEG799"),
		   ("MT104", "TTI101"),
		   ("MT105", "PL101"),
		   ("Mt106", "TV213"),
		   ("Mt107", "MG010"),
		   ("MT108", "EL141");
           
           
INSERT INTO MANUTENCAO_APART
	VALUES ("MT101" , "FA01"),
		   ("MT101" , "FA02"),
           ("MT107" , "ES01"),
           ("MT107" , "ES02"),
           ("MT107" , "ES03"),
           ("MT107" , "ES04"),
           ("MT105" , "ES01"),
           ("MT105" , "ES02"),
           ("MT105" , "ES03"),
           ("MT105" , "ES04");
           
           
INSERT INTO MANUTENCAO_LAZER
	VALUES ("MT102" , "LXRE1"),
		   ("MT102" , "LXRE2"),
           ("MT103" , "LXGIN1"),
           ("MT103" , "LXGIN2"),
           ("MT104" , "LXRE1"),
           ("MT104" , "LXRE2"),
           ("MT104" , "PNRE1"),
           ("MT104" , "ESRE1"),
           ("MT106" , "LXRE1"),
           ("MT106" , "LXRE2"),
           ("MT106" , "PNRE1"),
           ("MT106" , "ESRE1"),
           ("MT108" , "ESPIS1");
           
           
# UPDATE 2 ON 14/05/25