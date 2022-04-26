use ud15_ej1;

create table despachos(
numero int primary key,
capacidad int
);

insert into despachos values
(11, 4),
(22, 4),
(33, 4),
(44, 4),
(55, 4),
(66, 4),
(77, 4),
(88, 4),
(99, 4),
(111, 4);

select * from despachos;


create table directores(
DNI varchar(8) primary key,
nombreApellidos nvarchar(255),
despacho_FK int,
DNIJefe_FK varchar(8),
foreign key (despacho_FK) references despachos (numero),
foreign key (DNIJefe_FK) references directores (DNI)
);

insert into directores values
("A1234567", "Verónica P.", 11, "A1234567"),
("B1234567", "Adria Q.", 11, "A1234567"),
("C1234567", "Aida Q.", 22, "A1234567"),
("D1234567", "Marc P.", 44, "A1234567"),
("E1234567", "Marc L.", 55, "A1234567"),
("F1234567", "Gerard S.", 22, "A1234567"),
("G1234567", "Eloi M.", 77, "A1234567"),
("H1234567", "Octavio B.", 55, "A1234567"),
("I1234567", "Marc N.", 33, "A1234567"),
("J1234567", "Joan H.", 99, "A1234567");

select * from directores;