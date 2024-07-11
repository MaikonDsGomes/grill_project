create database grill;
use grill;

-- drop database grill;

create table funcionario(
	idFuncionario int primary key auto_increment,
    nome varchar(45),
    rg char(12),
    cpf char(14),
    logradouro varchar(45),
    bairro varchar(45),
    cep char(9),
    dtNasc date,
    dtAdmissao date,
    dtDemissao date,
    sexo char(1),
    estadoCivil varchar(45),
    tipo varchar(45)
);

create table produto(
	idProduto int primary key auto_increment,
    nome varchar(45),
    foto varchar(45),
    descricao varchar(100),
    valor int
);

create table ingrediente(
	idIngrediente int primary key auto_increment,
    nome varchar(45),
    qtd int
);

-- drop table ingrediente;

create table produtoIgrediente(
	fkProduto int,
    fkIngrediente int,
    constraint produtoIngredinte foreign key (fkProduto) references produto(idProduto),
    constraint ingredientePorduto foreign key (fkIngrediente) references ingrediente(idIngrediente)
);

create table mesa(
	idMesa int primary key auto_increment,
    qtdLugar int,
    stats varchar(45)
);

create table cliente(
	idCliente int primary key auto_increment,
    nome varchar(45),
    email varchar(255),
    senha varchar(45),
    cep char(9),
    cpf char(14),
    telefone char(15)
);

create table reserva(
	idReserva int primary key auto_increment,
    fkCliente int,
    constraint reservaCliente foreign key (fkCliente) references cliente(idCliente),
    fkMesa int,
    constraint reservaMesa foreign key (fkMesa) references mesa(idMesa),
    dtHora datetime
);

create table pedido(
	idPedido int primary key auto_increment,
    fkProduto int,
    constraint pedidoProduto foreign key (fkProduto) references produto(idProduto),
	fkFuncionario int,
    constraint pedidoFuncionario foreign key (fkFuncionario) references funcionario(idFuncionario),
    dt datetime
);


-- INSERTS
insert into funcionario (nome, rg, cpf, logradouro, bairro, cep, dtNasc, dtAdmissao, sexo, estadoCivil, tipo) values 
("Marcelo Alves Silva", "62.632.222.2", "121.212.323-23", "Rua das garças", "Vila das andorinhas", "08762-234", "2000-02-09", "2024-07-02", "m", "solteiro(a)", "Cozinheiro(a) assistente"),
("Samanta Cavalcante Mendes", "08.132.322.9", "121.212.323-23", "Av das maças", "Vila do hortifrut", "13242-987", "1998-11-09", "2024-07-08", "f", "casado(a)", "Cozinheiro(a) assistente"),
("Alan da Cunha", "97.866.563.2", "121.212.323-23", "Rua cloves", "Vila vilosa", "98108-232", "2001-08-09", "2024-07-08", "m", "solteiro(a)", "Cozinheiro(a) assistente"),
("Pablo Marques", "55.135.423.5", "121.212.323-23", "Rua drosas vermelhas", "Jardim verde", "87624-878", "1989-02-09", "2024-07-01", "m", "solteiro(a)", "Cozinheiro(a) chefe"),
("Marcos de Paula Pereira", "22.099.009.9", "121.112.221-12", "Av da arte", "Vila da musas", "12345-678", "1995-06-15", "2024-07-01", "m", "casado(a)", "Garçom"),
("Carlos Souza", "75.099.877.4", "987.654.321-02", "Rua das Flores", "Vila das Rosas", "12345-678", "1995-06-15", "2024-07-01", "m", "casado(a)", "Garçom"),
("Ana Paula", "87.121.321.3", "111.222.333-44", "Avenida Central", "Centro", "87654-321", "1990-12-20", "2024-07-01", "f", "solteiro(a)", "Garçom"),
("Pedro Henrique", "13.127.878.2", "222.333.444-55", "Rua das Palmeiras", "Jardim Primavera", "23456-789", "1988-03-05", "2024-06-24", "m", "casado(a)", "Gerente"),
("Joana Silva", "42.097.421.1", "555.666.777-88", "Rua das Margaridas", "Bairro das Flores", "34567-890", "1992-08-25", "2024-07-05", "f", "solteiro(a)", "Recepcionista");


