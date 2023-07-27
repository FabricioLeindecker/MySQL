/*Deletar dados*/
delete from animals where id_animals != 6;
delete from animals where fl_sex = 'F' and id_animals = 1;

/*Atualizar dados*/
update animals set ds_name = 'dog salsicha' where id_animals = 2;

/*Visualizar colunas com condicional*/
select a.ds_name from animals a where a.id_animals = 2;

/*Visualizar colunas com alias (apleido)*/
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
    primary key (id_animals)
);

/*Selecionar a base criada*/
use petshop;

/* criar base de dados */
create database petshop;