require 'yaml'

class Producto

    # getters
    attr_reader :id, :nombre, :tipo, :precio_actual, :estado, :precio_anterior, :minimo, :maximo


    # constructor
    def initialize(nombre, tipo, minimo, maximo)
        @nombre = nombre
        @tipo = tipo.downcase
        @id = self.object_id.to_s
        setPrecio(Float(minimo),Float(maximo))
    end

    def actualiza(nombre, tipo, minimo, maximo)
        @nombre = nombre
        @tipo = tipo
        setPrecio(Float(minimo),Float(maximo))
    end

    # Genera un precio aleatorio dentro del rango
    # y guarda el valor anterior
    def generaPrecio
        @precio_actual = random(@minimo, @maximo) if @precio_anterior.nil?
        @precio_anterior = @precio_actual
        @precio_actual = random(@minimo, @maximo)
    end

    # Establece como precio actual el precio mínimo
    def setPrecioMinimo
        @precio_anterior = @precio_actual
        @precio_actual = @minimo
    end

    # El precio ha aumentado, disminuido o se mantiene
    def estado
        val = (@precio_actual - @precio_anterior) / @precio_anterior
        val.round(2)
    end

    # -------------------------
    # Serialización

    def to_yaml
        YAML.dump({
            :nombre => @nombre,
            :tipo => @tipo,
            :precio_minimo => @minimo,
            :precio_maximo => @maximo
        })
    end

    # Método de clase
    def self.from_yaml (string)
        data = YAML.load string
        p data
        self.new(data[:nombre], data[:tipo], data[:precio_minimo], data[:precio_maximo])
    end

    def crecimiento
        if Float(estado).positive?
            'sube'
        else
            'baja'
        end
    end

    private

    # Establece el rango de precios y genera un precio
    def setPrecio(min,max)
        if min <= 0 || max <= 0
            raise ArgumentError, 'Los precios deben ser mayores a 0'
        end

        min,max = max,min if max<min
        @minimo = min
        @maximo = max
        generaPrecio
    end

    # Devuelve un float cuyos decimales son
    # multiplos de 5
    def random(min,max)
        ran = rand * (max-min) + min

        decimal = ran.modulo(1).round(2)
        decimal = decimal.to_s[2..-1].to_i
        decimal = (decimal/5.0).round * 5

        int = ran.to_i

        if decimal == 100
            decimal = 0
            int += 1
        end

        Float(int.to_s+"."+decimal.to_s)
    end

end
