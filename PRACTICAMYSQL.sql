
use tienda;
/*Lista el nombre de todos los productos que hay en la tabla producto.*/
select * from producto;

/*Lista los nombres y los precios de todos los productos de la tabla producto*/
select nombre, precio from producto;

/*Lista todas las columnas de la tabla producto.*/
show full columns from producto;

/*Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD)*/
select nombre from producto;

/*Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD). Utiliza los siguientes alias para las columnas: nombre de producto, euros, dólares.*/
SELECT 
nombre as 'nombre de producto',
precio as 'euro',
round(precio*1.11, 2) as  dolar from producto;

/*Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a mayúscula.*/
select upper(nombre),precio from producto;


/*Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a minúscula.*/
select lower(nombre),precio from producto;

/*08--Lista el nombre de todos los fabricantes en una columna, y en otra columna obtenga en mayúsculas los dos primeros caracteres del nombre del fabricante.*/
select nombre,upper(left(nombre,2)) 
from producto;

/*09---Lista los nombres y los precios de todos los productos de la tabla producto, redondeando el valor del precio.*/
select nombre,ROUND(precio) as precio from producto;

/*10--Lista los nombres y los precios de todos los productos de la tabla producto, truncando el valor del precio para mostrarlo sin ninguna cifra decimal.*/
select nombre,truncate(precio,0) as precio from producto;

/*11---Lista el código de los fabricantes que tienen productos en la tabla producto.*/
SELECT codigo from producto;

/*12--Lista el código de los fabricantes que tienen productos en la tabla producto, eliminando los códigos que aparecen repetidos.*/
SELECT DISTINCT codigo FROM producto;

/*13--Lista los nombres de los fabricantes ordenados de forma ascendente.*/
SELECT nombre
FROM fabricante
ORDER BY nombre ASC;

/*14--Lista los nombres de los fabricantes ordenados de forma descendente.*/
SELECT nombre
FROM fabricante
ORDER BY nombre DESC;

/*15--Lista los nombres de los productos ordenados en primer lugar por el nombre de forma ascendente y en segundo lugar por el precio de forma descendente.*/
SELECT nombre,precio
FROM producto
ORDER BY nombre ASC, precio desc;

