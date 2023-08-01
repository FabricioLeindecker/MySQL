insert into animals(DS_NAME, NM_AGE, FL_SEX, ID_CLIENT) values ('Scooby', 1, 'F', 2);
select * from animals;
select * from clients;

select c.DS_NAME, a.DS_NAME, a.nm_age from clients c, animals a where c.ID_CLIENT = a.ID_CLIENT;

select DS_NAME from animals where DS_NAME like '%dog%'; 


/* Visualizar tabelas da base de dados*/
show tables;

/*Visualizar dados da tabela*/ 
desc animals;

/*Apagar uma coluna da tabala*/
alter table animals
drop column DS_NICKNAME;

/*Acrescentar uma coluna na tabela*/
alter table animals
add column DS_NICKNAME varchar(80);

alter table animals
add column ID_CLIENT int;

/*Adicionar chave estrangeira para uma coluna da tabela*/
alter table animals 
add foreign key(ID_CLIENT) references clients(ID_CLIENT);

select ID_CLIENT, NM_CELLPHONE from clients where NM_CELLPHONE is not null;

update clients set NM_CELLPHONE = 511903190 where ID_CLIENT = 3;


create table clients (
		ID_CLIENT int not null auto_increment,
        DS_NAME varchar(255) not null,
        NM_CELLPHONE int,
        DS_STATUS enum('A','I'),
        primary key(ID_CLIENT)
);
insert into clients(DS_NAME, NM_CELLPHONE, DS_STATUS) VALUES('Renato', '9999999', 'I');

select*from clients;

/*Deletar dados*/
delete from animals where id_animals != 6;
delete from animals where fl_sex = 'F' and id_animals = 1;

/*Atualizar dados*/
update animals set ds_name = 'dog salsicha' where id_animals = 2;

/*Visualizar colunas com condicional*/
select a.ds_name from animals a where a.id_animals = 2;

/*Visualizar colunas com alias (apelido)*/
select a.ds_name, a.nm_age from animals a;

/*Inserir dados na tabela*/
insert into animals(ds_name, nm_age, fl_sex) values('doguinho caramelo', 2, 'M');

/*Deletar tabela*/ 
drop table animals;

/*Visualizar todos os dados da tabela*/
select * from animals;

/*Criar tabela de dados*/ 
create table animals (
	id_animals int not null auto_increment,
    ds_name varchar (255) not null,
    nm_age int,
    fl_sex enum ('M', 'F'),
    dt_created datetime default current_timestamp,
    primary key (id_animals),
    foreign key (ID_CLIENT) references clients (ID_CLIENT)
);

/*Selecionar a base criada*/
use petshop;

/* criar base de dados */
create database petshop;