use distribuidora;
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


