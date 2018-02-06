a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

#Utilizando map generar un nuevo arreglo con cada valor aumentado en 1.

b = a.map { |e| e + 1 }
puts b

#Utilizando map generar un nuevo arreglo que contenga todos los valores convertidos a float.

b = a.map { |e| e.to_f }
puts b

#Utilizando map generar un nuevo arreglo que contenga todos los valores convertidos a string.

b = a.map { |e| e.to_s }
puts b

#Utilizando reject descartar todos los elementos menores a 5 en el array.

b = a.reject { |e| e < 5}
puts b
puts ''

#Utilizando select descartar todos los elementos mayores a 5 en el array.

b = a.select { |e| e > 5}

puts b

#Utilizando inject obtener la suma de todos los elementos del array.

total = a.inject(0) {|suma, x| x + suma }
		puts "La suma de los elementos es #{total}"

#Utilizando group_by agrupar todos los números por paridad (si son pares, es un grupos, si son impares es otro grupo).

pares = []
impares = []

a.group_by do |x|
	if x.even?
		pares.push(x)
	else 
		impares.push(x)
	end
end

print pares 
print impares

#Utilizando group_by agrupar todos los números mayores y menores que 6.

mayores = []
menores = []

a.group_by do |x|
	if x > 6
		mayores.push(x)
	else
		menores.push(x)
	end
end

print mayores
print menores