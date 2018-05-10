personas_hash = {'Carolina'=> 32, 'Alejandro'=>28, 'María Jesús'=>41, 'Valentín'=>19}

suma = 0
personas_hash.each do |edades|
  suma += edades[1].to_i
end

puts suma / personas_hash.length
