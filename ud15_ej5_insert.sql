use ud15_ej5;
create table facultad(
codigo int primary key,
nombre varchar (100)
);

insert into facultad values 
(1, "facultad de periodismo"),
(2, "facultad de medicina"),
(3, "facultad de derecho"),
(4, "facultad de química"),
(5, "facultad de filosofía"),
(6, "facultad de filología"),
(7, "facultad de física"),
(8, "facultad de psicología"),
(9, "facultad de matemáticas"),
(10, "facultad de geografía");

select * from facultad;


create table investigadores(
DNI varchar(8) primary key,
nombreApellidos varchar(255),
facultad int,
foreign key (facultad) references facultad (codigo)
);

insert into investigadores values 
("A1234567", "Verónica P.", 1),
("B1234567", "Isidre P.", 2),
("C1234567", "Adria Q.", 3),
("D1234567", " Marc P.", 4),
("E1234567", "David D.", 5),
("F1234567", "Octavio B.", 6),
("G1234567", "Gerard S.", 7),
("H1234567", "Aida Q.", 8),
("I1234567", "Eloi M.", 9),
("J1234567", "Joan H.", 10);

select * from investigadores;

create table equipos(
numSerie char(4) primary key,
nombre varchar(100),
facultad int,
foreign key (facultad) references facultad (codigo)
);

insert into equipos values
("A123", "equipo1", 1),
("B123", "equipo2", 1),
("C123", "equipo3", 1),
("D123", "equipo4", 1),
("E123", "equipo5", 1),
("F123", "equipo6", 1),
("G123", "equipo7", 1),
("H123", "equipo8", 1),
("I123", "equipo9", 1),
("J123", "equipo10", 1);

select * from equipos;


create table reserva(
idReserva int primary key,
DNI varchar(8),
numSerie char(4),
comienzo datetime,
fin datetime,
foreign key (DNI) references investigadores (DNI),
foreign key (numSerie) references equipos (numSerie)
);

insert into reserva values 
(1, "A1234567", "A123", "2022-01-01 09:00:00", "2022-01-01 10:00:00"),
(2, "B1234567", "B123", "2022-02-01 10:00:00", "2022-01-01 11:00:00"),
(3, "C1234567", "C123", "2022-03-01 11:00:00", "2022-01-01 12:00:00"),
(4, "D1234567", "D123", "2022-04-01 12:00:00", "2022-01-01 13:00:00"),
(5, "E1234567", "E123", "2022-05-01 13:00:00", "2022-01-01 14:00:00"),
(6, "F1234567", "F123", "2022-06-01 14:00:00", "2022-01-01 15:00:00"),
(7, "G1234567", "G123", "2022-07-01 15:00:00", "2022-01-01 16:00:00"),
(8, "H1234567", "H123", "2022-08-01 16:00:00", "2022-01-01 17:00:00"),
(9, "I1234567", "I123", "2022-09-01 17:00:00", "2022-01-01 18:00:00"),
(10, "J1234567", "J123", "2022-10-01 18:00:00", "2022-01-01 19:00:00");

select * from reserva;



