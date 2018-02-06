meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

#Generar un hash que contenga los meses como llave y las ventas como valor

a = meses.zip(ventas).to_h

#Invertir las llaves y los valores del hash.

a.invert

#Obtener el mes con mayor cantidad de ventas (a partir del hash invertido.)

puts a.key(a.values.max)


