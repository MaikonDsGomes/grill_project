create database grill;

use grill;

create table funcionario(
	idFunc int primary key,
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
	idProduto int primary key,
    nome varchar(45),
    foto varchar(45),
    descricao varchar(100),
    valor int
);

create table ingrediente(
	idIngrediente int primary key,
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