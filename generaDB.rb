require_relative 'lib/producto.rb'

arr = []

# Cervezas
arr << Producto.new('Cruzcampo 1/3', 'cerveza', 1.1, 1.7)
arr << Producto.new('Heineken 1/3', 'cerveza', 1.1, 1.7)
arr << Producto.new('Heineken 0,0 1/3', 'cerveza', 1.2, 1.8)
arr << Producto.new('Amstel 1/3', 'cerveza', 1.1, 1.7)
arr << Producto.new('Cruzcampo 1/5', 'cerveza', 0.7, 1.2)
arr << Producto.new('Jarra', 'cerveza', 1.5, 2.2)
arr << Producto.new('Tubo', 'cerveza', 0.9, 1.5)
arr << Producto.new('3.3Caña', 'cerveza', 0.7, 1.1)

# Tintos
arr << Producto.new('Tinto casero vaso ancho', 'tinto', 1.2, 1.7)
arr << Producto.new('Tinto casero tubo', 'tinto', 0.9, 1.3)
arr << Producto.new('Rioja', 'tinto', 1.1, 1.8)
arr << Producto.new('Espumoso', 'tinto', 1.2, 1.8)
arr << Producto.new('Rueda', 'tinto', 1.2, 1.8)

# Raciones
arr << Producto.new('Mcnolo', 'racion', 3.5, 4.1)
arr << Producto.new('Tender', 'racion', 5.2, 6)
arr << Producto.new('Lágrimas', 'racion', 5, 5.8)
arr << Producto.new('Tex y kebab', 'racion', 3.5, 4.1)
arr << Producto.new('Montadito', 'racion', 1.1, 1.6)
arr << Producto.new('Croquetas', 'racion', 5, 5.7)
arr << Producto.new('Alitas', 'racion', 5, 5.7)
arr << Producto.new('Flamenquines', 'racion', 3.8, 4.2)
arr << Producto.new('Bravas', 'racion', 3.3, 3.7)

# Cocktails
arr << Producto.new('Piña colada', 'cocktail', 2.9, 3.8)
arr << Producto.new('Daikiri', 'cocktail', 2.9, 3.8)
arr << Producto.new('Mojito', 'cocktail', 2.9, 3.8)

# Ginebras
arr << Producto.new('Larios 12', 'ginebra', 2.5, 3.3)
arr << Producto.new('Larios', 'ginebra', 2.2, 2.8)
arr << Producto.new('Beefeater', 'ginebra', 2.5, 3.3)
arr << Producto.new('Puerto de Indias', 'ginebra', 2.9, 3.6)

# Rones
arr << Producto.new('Barceló', 'ron', 2.5, 3.3)
arr << Producto.new('Brugal', 'ron', 2.5, 3.3)
arr << Producto.new('Areucas', 'ron', 2.5, 3.3)
arr << Producto.new('Cacique', 'ron', 2.5, 3.3)
arr << Producto.new('Ron Miel', 'ron', 2.5, 3.3)
arr << Producto.new('Negrita', 'ron', 2.2, 2.8)

# Whiskys
arr << Producto.new('JB', 'whisky', 2.5, 3.3)
arr << Producto.new('DYC 8', 'whisky', 2.5, 3.3)
arr << Producto.new('Ballantine', 'whisky', 2.5, 3.3)
arr << Producto.new('White Label', 'whisky', 2.5, 3.3)
arr << Producto.new('Doble V', 'whisky', 2.2, 2.8)

# Chismaillos
arr << Producto.new('En tubo', 'chismaillo', 2.0, 2.4)
arr << Producto.new('En vaso ancho', 'chismaillo', 2.3, 2.8)


File.open("productos.yml", "w") do |f|
    f.write(arr.to_yaml)
end













