personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

personas = {'Carolina' => 32, 'Alejandro' => 28, 'Maria Jesús' => 41, 'Valentin' => 19}


def promedio(personas)
  suma_total = 0
  personas.each { |k,v| suma_total += v}
  suma_total /  personas.length
end

puts promedio(personas)
