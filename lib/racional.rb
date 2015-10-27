class Racional
    attr_reader :num, :den #Solo lectura

    def initialize(num,den)
        @num, @den = num, den
    end
    def to_s
        "#{@num}/#{@den}"
    end
    def *(fraccion)
        Racional.new(@num * fraccion.num, @den * fraccion.den)
    end
end