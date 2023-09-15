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
where loj_prod = '2';

select * from produtos;

select Dt_inclu_pro  from produtos
order by   Dt_inclu_pro desc;


select * from produtos
where Cód_prod > '1';

select count(*) from produtos
where loj_prod > 0;

select * from produtos
where desc_prod like'L%';

select sum(preco_prod) from produtos
where loj_pro = '1';

select sum(preco_prod) from produtos
where loj_pro = '2';

select * from produtos
where preco_prod > 100.000;



create table Estoque(
Cód_prod int(8) comment 'Código do produto',
loj_prod int(8) comment 'Código da Loja',
qtd_prod dec(15,3) comment'Quantidade em Estoque do Produto',
Primary key(Cód_prod),
foreign key (loj_prod) references produtos(loj_prod),
foreign key (loj_prod) references lojas(loj_prod)
);

insert into estoque values ('','1','');
insert into estoque values ('170','2''1.000');

create table Lojas(
loj_prod int(8) comment'Código da Loja',
desc_loj char(40) comment 'Descrição da Loja',
primary key (loj_prod)
);

insert into lojas values ('1','Loja 1');
insert into lojas values ('2','Loja 2');




desc lojas;
select * from lojas;
select * from Estoque;
select * from produtos;

select * from lojas l join produtos p
on l.loj_prod = p.loj_prod;

select l.loj_prod, l.desc_loj, p.cód_prod, p.desc_prod, p.preco_prod from lojas l
join produtos p
on l.loj_prod = p.loj_prod;

select * from estoque l
join produtos p 
on l.loj_prod = p.loj_prod;

select e.cód_prod, e.loj_prod, e.qtd_prod, p.desc_prod, p.dt_inclu_pro, p.preco_prod from estoque e
join produtos p 
on l.loj_prod = p.loj_prod;


