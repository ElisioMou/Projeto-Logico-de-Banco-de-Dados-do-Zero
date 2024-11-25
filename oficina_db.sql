--Criando banco de dados para Oficina
CREATE DATABASE IF NOT EXISTS oficina;
USE oficina;

--Criando a tabela Cliente
CREATE TABLE Cliente(
					id_Cliente INT AUTO_INCREMENT PRIMARY KEY,
                    CPF CHAR(11) NOT NULL UNIQUE,
                    Contato INT UNIQUE,
                    Endereco VARCHAR(150)
					);
                        
--Criando a tabela Veiculo
CREATE TABLE Veiculo(
						id_Veiculo INT AUTO_INCREMENT PRIMARY KEY,
                        Modelo VARCHAR(80) NOT NULL,
                        Licenciamento_CRLV VARCHAR(25),
                        Ano YEAR,
                        Condição VARCHAR(100),
                        Cliente_id_Cliente INT NOT NULL,
                        CONSTRAINT fk_Veiculo FOREIGN KEY (Cliente_id_Cliente) REFERENCES Cliente(id_Cliente)
                        );

--Criando a tabela Servico
CREATE TABLE Servico(
					id_Servico INT AUTO_INCREMENT PRIMARY KEY,
                    Servico_Tipo ENUM('Recall', 'Manutenção') NOT NULL DEFAULT 'Manutenção',
                    Prazo_final DATE,
                    Valor FLOAT NOT NULL,
                    Cliente_id_Cliente INT,
                    CONSTRAINT fk_Cliente FOREIGN KEY (Cliente_id_Cliente) REFERENCES Cliente(id_Cliente)
					);

-- Criando a tabela Funcionario
CREATE TABLE Funcionario(
							id_Funcionario INT AUTO_INCREMENT PRIMARY KEY,
                            Especialidade VARCHAR(50) NOT NULL,
                            Endereco VARCHAR(45),
                            Servico_id_Servico INT NOT NULL,
                            Servico_Cliente_id_Cliente INT NOT NULL,
                            CONSTRAINT fk_servico FOREIGN KEY (Servico_id_Servico) REFERENCES Service(id_Servico),
                            CONSTRAINT fk_cliente FOREIGN KEY (Servico_Cliente_id_Cliente) REFERENCES Cliente(id_Cliente)
                            );

-- Criando a tabela Ordem_Servico
CREATE TABLE Ordem_Servico(
				id_OS INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
                Descrição VARCHAR(100) NOT NULL
                );             
                   
-- Criando a tabela Pagamento
CREATE TABLE Pagamento(
					id_Pagamento INT AUTO_INCREMENT PRIMARY KEY,
					Pgto_metodo ENUM('Cartão de Crédito', 'Transferência bancária', 'Dinheiro') NOT NULL DEFAULT 'Dinheiro',
                    POS INT NOT NULL,
					PServico INT NOT NULL,
					PCliente INT NOT NULL,
					CONSTRAINT fk_pagamento_os FOREIGN KEY (POS) REFERENCES OS(id_OS),
					CONSTRAINT fk_pagamento_service FOREIGN KEY (PServico) REFERENCES Service(id_Servico),
                    CONSTRAINT fk_pagamento_customer FOREIGN KEY (PCliente) REFERENCES Cliente(id_Cliente)
					);
				
                

                    
                    
                    
                    
                    
                    