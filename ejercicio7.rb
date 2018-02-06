inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}

#Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4 y según eso el programa realizará distintas funciones.
def menu
	puts ''
	puts 'Inventario'
	puts '1.- Agregar'
	puts '2.- Eliminar'
	puts '3.- Actualizar'
	puts '4.- Ver Stock Total'
	puts '5.- Ver Item con mayor stock'
	puts '6.- Ver si Item existe en stock'
	puts '7.- Salir'
	puts ''
end

menu

while opcion = gets.chomp

	case opcion
		when '1'

			puts 'Ingrese item y su valor separado por coma. Ej. producto1,100'
			agregar = gets.chomp
			arreglo = agregar.split(',')
			inventario[arreglo[0].to_sym] = arreglo[1].to_i
			#item, cantidad = agregar.split(',')
			#inventario[item.to_sym] = cantidad.to_i
			puts inventario
			menu

		when '2'

			puts inventario
			puts 'Ingrese nombre del item a eliminar'
			eliminar = gets.chomp
			inventario.delete(eliminar.to_sym)
			puts inventario
			menu

		when '3'

			puts inventario
			puts 'Ingrese item y stock a actualizar. Ej. producto1,100'
			actualizar = gets.chomp.to_sym
			actualizar1,actualizar2 = actualizar.split(',')
			inventario[actualizar1.to_sym] = actualizar2.to_i
			puts inventario
			menu

		when '4'

			total = inventario.inject(0) {|suma,(nombre, valor)| suma + valor }
			puts "El stock total del inventario es #{total}"
			menu

		when '5'

			inventario.each do |nombre, valor| 
				if valor == inventario.values.max 
					puts "El item #{nombre} tiene el mayor stock del inventario (#{valor})"
				end
			end
			menu

		when '6'

			puts inventario
			puts 'Ingrese el item a consultar'
			item = gets.chomp.to_sym
			inventario.each {|nombre,valor| puts 'Si' if item == nombre}
			menu

		when '7'
			puts 'Saliendo'
			break

		else
			puts 'La opcion ingresada no es valida'
			menu
	end
end

