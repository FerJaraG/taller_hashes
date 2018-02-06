personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

intercalar = personas.zip(edades).to_h

#Crear un método que reciba el hash y devuelva el promedio de las edades del hash pasado como argumento.

def promedios(a)
	b = a.inject(0) {|suma,(llave, valor)| suma + valor }
	promedio = b.to_f / a.keys.count
end

puts promedios(intercalar)