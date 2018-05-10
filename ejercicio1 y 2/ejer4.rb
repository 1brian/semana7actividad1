# Convertir el hash en un array y guardarlo en una nueva variable.

productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}
productos['bebida'] = '2000'

new_product = productos.to_a

print new_product
