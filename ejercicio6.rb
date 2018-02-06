restaurant_menu = { "Ramen" => 3000, "Dal Makhani" => 4000, "Coffee" => 2000, "Cazuela" => 3000, "Porotos" => 3000, "Pizza" => 4000 }

#Obtener el plato mas caro.

restaurant_menu.each do |nombre, valor| 
	if valor == restaurant_menu.values.max 
		puts "El plato mas caro es #{nombre} y su precio es #{valor}"
	end
end

#Obtener el plato mas barato.

restaurant_menu.each do |nombre, valor| 
	if valor == restaurant_menu.values.min
		puts "El plato mas barato es #{nombre} y su precio es #{valor}"
	end
end

#Sacar el promedio del valor de los platos.

b = restaurant_menu.inject(0) {|suma,(nombre, valor)| suma + valor }

puts promedio = b.to_f / restaurant_menu.keys.count

#Crear un arreglo con solo los nombres de los platos.

b = []

restaurant_menu.each do |nombre, valor|
	b.push(nombre)
end

#Crear un arreglo con solo los valores de los platos.

b = []

restaurant_menu.each do |nombre, valor|
	b.push(valor)
end

#Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).

restaurant_menu.each do |nombre,valor|
	iva = 0
	iva = valor * 1.19
	restaurant_menu[nombre] = iva
end

#Dar descuento del 20% para los platos que tengan un nombre de más 1 una palabra.

restaurant_menu.each do |nombre, valor|
	if nombre.match(' ')
		descuento = valor * 0.80
		restaurant_menu[nombre] = descuento
	end
end

puts restaurant_menu