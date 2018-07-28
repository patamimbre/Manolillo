require_relative 'producto.rb'

class Productos
    def initialize(ruta="productos.yml")
        @yml = ruta
        @array_productos = cargar
    end

    def tipos
        @array_productos.map{|x| x.tipo}.uniq
    end

    def raciones
        %(ración cerveza tinto).split(' ')
    end

    def copas
        %(cerveza chismaillo ron cocktail ginebra whisky).split(' ')
    end

    def completo
        %(cerveza cocktail ración chismaillo tinto whisky ron ginebra).split(' ')
    end

    def productos 
        @array_productos
    end

    def guardar
        File.open(@yml, "w") do |f|
            f.write(@array_productos.to_yaml)
        end
    end

    def cargar
        YAML.load(File.read(@yml))
    end

    def buscar(id)
        @array_productos.select {|x| x.id.to_s.eql? id.to_s}[0]
    end

    def buscar_tipo(un_tipo)
        @array_productos.select {|x| x.tipo.eql? un_tipo}
    end

    def delete(id)
        @array_productos.reject! {|x| x.id.to_s.eql? id.to_s}
        guardar
    end

    def add(producto)
        @array_productos << producto
    end

    def precios_minimos
        @array_productos.each {|pr| pr.setPrecioMinimo}
    end

    def genera_precios
        @array_productos.each {|pr| pr.generaPrecio}
    end


end
