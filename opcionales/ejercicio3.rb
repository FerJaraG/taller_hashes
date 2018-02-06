def menu
	puts ''
	puts '1.- Ingresar datos de una persona'
	puts '2.- Editar datos de una persona'
	puts '3.- Eliminar una persona'
	puts '4.- Cantidad de personas ingresadas'
	puts '5.- Comunas de las personas'
	puts '6.- Personas entre 20 y 25 años'
	puts '7.- Suma de edades'
	puts '8.- Promedio de Edades'
	puts '9.- Lista de personas por genero'
	puts '10.- Salir'
	puts ''
end

def agregar
	puts 'Ingrese Nombre:'
	nombre = gets.chomp
	puts 'Ingrese Edad:'
	edad = gets.chomp
	puts 'Ingrese Comuna:'
	comuna = gets.chomp
	puts 'Ingrese Genero'
	genero = gets.chomp

	persona = { :nombre => nombre, :edad => edad, :comuna => comuna, :genero => genero }
	   
	
end

def menu_editar
	puts ''
	puts '1.- Editar Edad'
	puts '2.- Editar Comuna'
	puts '3.- Editar Genero'
	puts '4.- Salir'
	puts ''
end

def editar(persona)
	
	puts 'Ingrese el nombre de la persona que quiere editar:'
				nombre = gets.chomp

				menu_editar

					while opcion = gets.chomp
						case opcion

							when '1'
								puts 'Ingrese nueva edad:'
								edad = gets.chomp
								if nombre == persona[:nombre]
									persona[:edad] = edad 
								end
								print persona
								menu_editar

							when '2'
								puts 'Ingrese nueva comuna:'
								comuna = gets.chomp
								if nombre == persona[:nombre]
									persona[:comuna] = comuna 
								end
								print persona
								menu_editar

							when '3'
								puts 'Ingrese nuevo genero:'
								genero = gets.chomp
								if nombre == persona[:nombre]
									persona[:genero] = genero 
								end
								print persona	
								menu_editar

							when '4'
								puts 'Saliendo'
								break
							else
								puts 'La opcion ingresada no es valida'
								menu_editar
						end
					end
				return persona
end

def eliminar(persona)
	puts 'Ingrese nombre de persona a eliminar'
	nombre = gets.chomp
	#persona.delete_at(persona[0][:nombre[nombre]])
	persona.delete_if { |h| h[:nombre] == nombre }
end

def contador_personas(personas)
	contador = 0
	personas.each do |count|
		contador += 1
	end
	contador
end

def comunas(personas)
	comunas = []
	personas.each do |x|
		x.each do |llave,valor|
			if llave == :comuna
				comunas.push(valor.downcase)
			end
		end
		
	end
	puts comunas.uniq
end

def jovenes(personas)
	jovenes = []
	personas.each do |x|
		x.each do |llave,valor|
			if llave == :edad
				if valor.to_i >= 20 and valor.to_i <= 25
					jovenes.push(x[:nombre])
				end
			end
		end
	end
	puts jovenes
end

def suma_edades(personas)
	suma = 0
	personas.each do |x|
		x.each do |llave,valor|
			if llave == :edad
				suma += valor.to_i
			end
		end
	end
	puts "La suma de edades es #{suma}"
end

def promedio_edades(personas)
	suma = 0
	prom = 0
	count = 0
	personas.each do |x|
		x.each do |llave,valor|
			if llave == :edad
				count += 1
				suma += valor.to_i
				prom = suma / count
			end
		end
	end

	puts "El promedio de edades es #{prom}"
end

def genero(personas)
	masculino = []
	femenino = []
	personas.each do |x|
		x.each do |llave,valor|
			if llave == :genero
				if valor == 'femenino'
					femenino.push(x[:nombre])
				elsif valor == 'masculino'
					masculino.push(x[:nombre])
				end
			end
		end
	end
	puts femenino
	puts
	puts masculino
end

menu
array = []

while opcion = gets.chomp
	case opcion
		when '1'
				a = agregar
				array.push(a)
	  			print array
	  			menu

		when '2'
				editar(a)
				print array
				menu

		when '3'
				eliminar(array)
				print array
				menu

		when '4'
				suma = contador_personas(array)
				puts "La cantidad de personas es #{suma}"
				print array
				menu

		when '5'
				comuna = comunas(array)
				menu

		when '6'
				joven = jovenes(array)
				menu

		when '7'
				suma_edades(array)
				menu

		when '8'
				promedio_edades(array)
				menu

		when '9'
				genero(array)
				menu

	when '10'
			puts 'Saliendo'
			break

		else
			puts 'La opcion ingresada no es valida'
			menu
	end
end

