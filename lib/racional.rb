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
    def /(fraccion)
        Racional.new(@num * fraccion.den, @den * fraccion.num)
    end
    #Maximo comun divisor
    def gcd(u, v)
      u, v = u.abs, v.abs
      while v > 0
        u, v = v, u % v
      end
      u
    end
    
    #Minimo comun multiplo
    def mcm(a , b)
     aux=gcd(a,b)
     (a/aux)*b
    end
    
    def +(fraccion)
        dc = mcm(@den, fraccion.den)
        Racional.new((@num * (dc/@den)) + (fraccion.num * (dc/fraccion.den)),dc)
    end
end