module Formula
  def perimetro(lado1, lado2)
    2 * (lado1 + lado2)
  end

  def area(lado1, lado2)
    lado1 * lado2
  end
end

class Rectangulo
  include Formula

  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def lados
    puts "BASE: #{@base} ALTURA: #{@altura}"
  end

  def perimetro(lado1 = @base, lado2 = @altura)
    super
  end

  def area(lado1 = @base, lado2 = @altura)
    super
  end
end

class Cuadrado
  include Formula

  def initialize(lado)
    @lado = lado
  end

  def lados
    puts "LADO: #{@lado}"
  end

  def perimetro(lado1 = @lado, lado2 = @lado)
    super
  end

  def area(lado1 = @lado, lado2 = @lado)
    super
  end
end

r = Rectangulo.new(6,2)
c = Cuadrado.new(2)

puts "El Perimetro del Rectangulo es = #{r.perimetro} y el Area = #{r.area}"
puts "El Perimetro de el Cuadrado es = #{c.perimetro} y el Area = #{c.area}"
