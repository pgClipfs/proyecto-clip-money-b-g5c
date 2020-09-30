/*Creacion de tipos de monedas, tipos de movimientos, y 4 divisas de ejemplo*/

insert into Tipo_Movimiento values('Dep�sito');
insert into Tipo_Movimiento values('Extracci�n');

insert into Tipo_Moneda values('Moneda Nacional')
insert into Tipo_Moneda values('Moneda Extranjera')
insert into Tipo_Moneda values('Criptomoneda')

insert into Divisa (Nombre,Tipo_Moneda) Values ('Pesos Argentinos','Moneda Nacional');
insert into Divisa (Nombre,Tipo_Moneda) Values ('D�lares','Moneda Extranjera');
insert into Divisa (Nombre,Tipo_Moneda) Values ('Euros','Moneda Extranjera');
insert into Divisa (Nombre,Tipo_Moneda) Values ('Bitcoin','Criptomoneda');

select * from Tipo_Movimiento
select * from Tipo_Moneda;
select * from Divisa;