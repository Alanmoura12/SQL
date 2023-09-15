create database distribuidora;

use distribuidora;

create table Produtos (
Cód_prod int(8) unique comment 'Código do Produto',
loj_prod int(8) primary key comment 'Código da Loja',
desc_prod char(40) comment 'Descrição do Produto',
Dt_inclu_pro date comment 'Data de Inclusão do Produto',
preco_prod decimal(8,3) comment'Preço do Produto'
);

select * from produtos;

insert into produtos values ('170','2','LEITE CONDENSADO MOCOCA','2010-12-30','45.4');

update produtos
set preco_prod = '95.40'
where loj_pro = '2';