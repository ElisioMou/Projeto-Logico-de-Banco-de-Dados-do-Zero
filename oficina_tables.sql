use oficina;
--Populando a tabela Cliente
desc Cliente;
select * from Cliente;
insert into Cliente (CPF, Contato,Endereco) values(11112345678, 3345789, 'Rua José Bonifácio, Patos de Minas-MG'),
												(22212345678, 12345678, 'Rua Simone Gonçalves, Uberlândia-MG'),
												(33312345678, 33456023, 'Rua Amarildo Maciel, Uberaba-MG'),
												(44412345678, 22853014, 'Rua João Borges, Araguari-MG');

--Populando a tabela Veiculo
desc Veiculo;
select * from Veiculo;
insert into Veiculo (Modelo, Licenciamento_CRLV, Ano, Condição, Servico_Tipo) 
				values('Palio', 'XYZ-1234', 1999, 'Novo', '1'),
					('Gol', 'ABC-4321', 2021,'Usado', '2'),
					('Creta', 'GHI-1234', 2019,'Semi-novo', '2'),
                    ('Ford', 'MNO-2345', 1965,'Antigo', '2'),
                    ('Golf', 'KMN-4567', 2015,'Conservado', '3'),
                    ('Toro', 'KOF-2024', 2024,'Novo', '4');
			
--Populando a tabela Funcionario
desc Funcionario;
select * from Funcionario;
insert into Funcionario(Especialidade, Endereco, Servico, Servico_Cliente) 
						values  ('Novos modelos', 'Rua Miguel Paiva, Uberlândia - MG',12, 3),
								('Velhos modelos', 'Rua Miranda Braz, Uberaba - MG', 17, 2),
								('Novos Modelos', 'Rua Antonio Carlos, Uberlândia - MG', 14, 5),
                                ('Qualquer modelo', 'Rua Rafael Lima, Uberaba - MG', 16, 2);
                               
 --Populando a tabela Ordem_Servico
select * from Ordem_Servico;
desc Ordem_Servico;
insert into Ordem_Servico (Descrição) values ('Alinhamento de rodas'),
										('Barulho motor'),
                                        ('Correia dentada'),
                                        ('Limpeza do carro'),
                                        ('Troca de óleo');

--Populando a tabela Servico
desc Servico;
select * from Servico;
insert into Servico (Servico_Tipo, Prazo_final, Valor, id_Cliente) 
			values('Manutenção'; '2024-11-30'; 1300,00; 1),
				('Check-up'; '2024-11-29'; 900,00; 1),
                ('Troca'; '2024-11-25'; 300,00; 2),
                ('Manutenção';'2024-11-23'; 250,00; 2),
                ('Check-up'; '2024-11-20'; 900,00; 4);

--Populando a tabela a Pagamento
desc Pagamento;
select * from Pagamento;
insert into Pagamento(Pgto_metodo, Ordem_Servico, id_Servico, id_Cliente) 
						values ('Dinheiro', 3, 12, 2),
							('Transferência bancária', 2, 15, 2),
							('Cartão de crédito', 4, 14, 4),
							('Dinheiro', 3, 12, 1);
                            
                            
                            
                            
