restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

#Obtener el plato más caro
restaurant_menu.values.max

#Obtener el plato más barato
restaurant_menu.values.min
#Sacar el promedio del valor de los platos
def promedio(restaurant_menu)
  suma_total = 0
  restaurant_menu.each { |k,v| suma_total += v }
  suma_total / restaurant_menu.length.to_f
end

#Crear un arreglo solo con el nombre de los platos

restaurant_menu.each do |k, v|
  puts k
end

#Crear un arreglo con el valor de los platos
restaurant_menu.each do |k, v|
  puts v
end

#Modificar el hash y agregar el iva a los valores de los platos (multiplicar por 1.19)

def iva
  restaurant_menu.each { |k, v| resultado = iva = 1.19 * v }
  puts resultado
end

#Dar descuento del 20% a los platos que tengan un nombre con mas de una palabra
