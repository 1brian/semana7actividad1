inventario = {"Notebooks"=> 4, "PC Escritorio"=> 6, "Routers"=> 10, "Impresoras"=> 6}
client = 0
puts "Tome una opción"
puts "1.- Podrá agregar un item y su stock"
puts "2.- Podrá eliminar un producto"
puts "3.- Podrá actualizar un producto"
puts "4.- Revise el stock total"
puts "5.- Vea que producto tiene el stock más alto"
puts "6.- Vea si un producto se encuentra disponible"
puts "7.- Salir del programa"


while client != 7
  client = gets.chomp.to_i

  case client
  when 1
    puts "Instrodusca el articulo y el stock"
    lines = gets.chomp.split(",")
    product = lines[0]
    stock = lines[1].to_i
    inventario[product] = stock
    puts "Gracias, el articulo fue agregado correctamente"
    puts "Escoja otra opción"
  when 2
    puts "Escriba el item que desee eliminar"
    palabra_a_eliminar = gets.chomp
    inventario[palabra_a_eliminar]
    b = inventario.delete(palabra_a_eliminar)
    puts "Item eliminado"
    puts "Escoja una opción"
    puts inventario
  when 3
    puts "Actualiza un producto del inventario"
    puts "Escriba el nombre del producto"
    producto = gets.chomp
    puts "Escibra el stock"
    stock = gets.chomp
    inventario[producto] = stock
    puts inventario

  when 4
    puts "Este es el stock total"
    a = inventario.inject(0){ |acu, x| x[1] + acu}
    puts a
    puts "Ingrese una nueva opción"
  when 5
    puts"El stock más alto"
    puts inventario.max_by{ |a, i| i}
    puts"Ingrese una nueva opción"

  when 6
    puts "Ingrese el nombre de un producto para saber si existe"
    nuevo = gets.chomp
    if inventario[nuevo]
       puts "Si, se encuentra disponible"
    else
      puts "No tenemos el producto"
    end
    puts"Presiona 6 para volver a ver un producto, o presiona 7 para salir"
  when 7
    puts "Gracias, a salido del programa"

  end
end
