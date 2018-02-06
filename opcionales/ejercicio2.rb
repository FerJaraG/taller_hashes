nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

#Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método .select.

# b = nombres.select { |x| x.length > 5}
# 	puts b

#Utilizando .map crear una arreglo con los nombres en minúscula.

# b = nombres.map { |e| e.downcase }
# 	puts b

#Utilizando .select para crear un arreglo con todos los nombres que empiecen con P.

# b = nombres.select {|x| x[0] == 'P'}
# 	puts b

#Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada nombre.

# b = nombres.map { |e| e.length }
# 	puts b

#Utilizando .map y .gsub eliminar las vocales de todos los nombres.

b = nombres.map { |e| e.gsub('a') }
	puts b