USE UD14ACT10;

INSERT INTO CAJEROS (codigo,NomApels) values 
(11,"pepe"),
(12,"pepa"),
(13,"toto"),
(14,"tete"),
(15,"tito"),
(16,"tutu"),
(17,"ferran"),
(18,"javi"),
(19,"varo"),
(20,"saray"),
(21,"clau");

INSERT INTO PRODUCTOS (codigo,nombre, precio) values 
(0001,"tomate", 3),
(0002,"apio", 1),
(0003,"yogurt", 1.55),
(0004,"papel WC", 3.49),
(0005,"agua",1.22),
(0006,"manzana",0.33),
(0007,"platano",0.25),
(0008,"pan", 1.30),
(0009,"pasta", 2.11),
(0010,"bollicao",3.1),
(0011,"jamon",21.55);

INSERT INTO MAQUINAS_REGISTRADORAS (codigo,piso) values 
(123123, 10010),
(124124, 10011),
(124125, 10012),
(124126, 10013),
(124127, 10014),
(124128, 10015),
(124129, 10016),
(124130, 10017),
(124131, 10018),
(124132, 10019),
(124133, 10020);

INSERT INTO VENTA (codigoCajeros, codigoMaquinas, codigoProductos)values 
(11,123123,0003),
(11,124126,0001),
(21,124130,0007),
(14,124132,0009),
(16,124133,0002),
(17,124127,0001),
(18,124125,0004),
(13,123123,0003),
(13,123123,0007),
(15,124127,0009),
(17,124125,0005);