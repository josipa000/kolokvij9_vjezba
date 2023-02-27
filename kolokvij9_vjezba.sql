use master;
create database kolokvij9;
use kolokvij9;

--create table prijateljica(
--sifra int not null primary key,
--treciputa datetime,
--novcica decimal(16,7),
--kuna decimal(14,10) not null,
--drugiputa datetime,
--haljina varchar(45),
--kratkamajica varchar(49)

--);

--create table punac (
--sifra int not null primary key,
--narukvica int not null,
--modelnaocala varchar(32),
--kuna decimal(12,8),
--bojaociju varchar(33),
--suknja varchar(45)
--);

--create table cura (
--sifra int not null primary key,
--vesta varchar(49) not null,
--ekstrovertno bit,
--carape varchar(50),
--suknja varchar(50) not null,
--punac int not null references punac(sifra)

--);

--create table punac_prijateljica (
--sifra int not null primary key,
--punac int not null references punac(sifra),
--prijateljica int not null references prijateljica(sifra)
--);

--create table brat (
--sifra int not null primary key,
--novcica decimal(18,2) not null,
--ekstrovertno bit,
--vesta varchar(32) not null,
--cura int not null references cura(sifra)

--);

--create table zarucnik (
--sifra int not null primary key,
--gustoca decimal(17,5),
--haljina varchar(40),
--kratkamajica varchar(50) not null,
--nausnica int not null,
--brat int not null references brat(sifra)

--);

--create table snasa (
--sifra int not null primary key,
--prstena int,
--drugiputa datetime not null,
--haljina varchar(30) not null,
--ostavljena int references ostavljena(sifra)

--insert into snasa
--values (100, 66, '2022-03-03', 'ružna', null);
--insert into snasa
--values (101, 67, '2025-07-03', 'ružna', null);

--select * from snasa;
----);

----create table ostavljena (
----sifra int not null primary key,
----modelnaocala varchar(34) not null,
----suknja varchar(32),
----eura decimal(18,7) not null,
----lipa decimal(15,7) not null,
----treciputa datetime not null,
----drugiuta datetime not null

----);


--insert into punac (sifra, narukvica, modelnaocala, kuna, bojaociju, suknja)
--values (4, 6,'gucci', 50.64, 'plava', 'lijepa' );
--insert into punac (sifra, narukvica, modelnaocala, kuna, bojaociju, suknja)
--values (5, 9,'bannani', 70.64, 'smeða', 'ružna' );
--insert into punac (sifra, narukvica, modelnaocala, kuna, bojaociju, suknja)
--values (6, 9,'rrejban', 187.996, 'zelena', 'kratka' );


--insert into cura (sifra, vesta, ekstrovertno, carape, suknja, punac)
--values (1, 'lijepa', 1, null, 'lijepa',4);
--insert into cura (sifra, vesta, ekstrovertno, carape, suknja, punac)
--values (2, 'debela', 0, 'vunene', 'dugaèka',5);
--insert into cura (sifra, vesta, ekstrovertno, carape, suknja, punac)
--values (3, 'tanka', 0, 'pletene', 'mala',6);

--insert into brat (sifra, novcica, ekstrovertno, vesta, cura)
--values (22, 20.2, 0, 'debela', 1);
--insert into brat (sifra, novcica, ekstrovertno, vesta, cura)
--values (23, 89.2, 1, 'izazovna', 2);
--insert into brat (sifra, novcica, ekstrovertno, vesta, cura)
--values (24, 97.4, 0, 'otvorena', 3);


--insert into prijateljica (sifra, treciputa, novcica, kuna, drugiputa, haljina, kratkamajica)
--values (33, '2022-12-12', 20.7, 68.99, '2021-01-01', 'dugaèka', 'kratka');
--insert into prijateljica (sifra, treciputa, novcica, kuna, drugiputa, haljina, kratkamajica)
--values (34, '2020-12-25', 97.7, 61.99, '2021-07-01', 'kratka', 'kratka');
--insert into prijateljica (sifra, treciputa, novcica, kuna, drugiputa, haljina, kratkamajica)
--values (35, '2017-12-12', 90.7, 62.99, '2021-06-01', 'dugaèka', 'kratka');


--insert into punac_prijateljica (sifra, punac, prijateljica)
--values (7, 4, 33);

--insert into punac_prijateljica (sifra, punac, prijateljica)
--values (8, 5, 34);

--insert into punac_prijateljica (sifra, punac, prijateljica)
--values (9, 6, 35);

--select * from brat;
--select * from cura;
--select * from punac_prijateljica;

--update snasa set drugiputa='2020-04-24' where sifra=100;
--update snasa set drugiputa='2020-04-24' where sifra=101;

--insert into zarucnik (sifra, gustoca, haljina, kratkamajica, nausnica, brat)
--values (70, 50.8, 'lijepa', 'kratka', 9, 22);
--insert into zarucnik (sifra, gustoca, haljina, kratkamajica, nausnica, brat)
--values (71, 59.8, 'AB', 'kratka', 10, 23);
--insert into zarucnik (sifra, gustoca, haljina, kratkamajica, nausnica, brat)
--values (72, 50.8, 'lijepa', 'kratka', 11, 24);
--select * from zarucnik;

--delete zarucnik where haljina='AB';
--select * from cura;

--update cura set ekstrovertno=null where sifra=2;

--select carape from cura where ekstrovertno is null;

--select p.kuna, z.nausnica, b.ekstrovertno
--from prijateljica p
--inner join punac_prijateljica pp on pp.prijateljica=p.sifra
--inner join punac pu on pp.punac=pu.sifra
--inner join cura c on c.punac=pu.sifra
--inner join brat b on c.sifra=b.cura
--inner join zarucnik z on z.brat=b.sifra
--where c.ekstrovertno is not null and pu.modelnaocala like '%ba%'
--order by b.ekstrovertno desc;

--select pu.modelnaocala, pu.kuna
--from punac pu
--left join punac_prijateljica pp on pp.punac=pu.sifra
--where pp.punac is null;
use master;