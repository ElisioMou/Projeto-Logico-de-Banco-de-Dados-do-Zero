use oficina;
--Queries
select * from Cliente;
select * from Ordem_Servico;
select * from Pagamento;
select * from Servico;
select * from Veiculo;
select * from Funcionario;

--Método de pagamento + Número da Ordem de Servico
select * from Cliente, Pagamento where id_Cliente = P_Cliente;
select CPF, Contato, Pgto_metodo, POS from Cliente, Pagamento  where id_Cliente = P_Cliente;

--Serviços relacionados aos clientes ordenados por data limite
select * from Cliente, Servico where id_Cliente = S_Cliente ORDER BY id_Cliente;
select Prazo_final, CPF, Contato, Endereco, Servico_Tipo, S_Valor 
				from Cliente, Servico 
                where id_Cliente = S_Cliente
                order by Prazo_final;

--Prazo limite para o próximo ano
select * from Funcionario, Servico where Servico_Cliente = id_Servico having Prazo_final > '2024-12-31';
select Prazo_final, Especialidade, Servico_Tipo, S_Valor, S_Cliente
						from Funcionario, Servico 
                        where Servico = id_Servico 
                        having Prazo_final > '2024-12-31';
