module Formula
  def perimetro(lado1, lado2 = lado1)
    perimetro = 2 * (lado1 + lado2)
  end
  def area(lado1, lado2 = lado1)
    area = lado1 * lado2
  end
end
class Rectangulo
  include Formula
  attr_reader :base, :altura
  def initialize(base, altura)
    @base = base
    @altura = altura
  end
  def lados
    puts "medida de los lados #{@lado}, #{@altura}"
  end
end

class Cuadrado
  include Formula
  attr_reader :lado
  def initialize(lado)
    @lado = lado
  end
  def lados
    puts "medidas de lado: #{@lado}"
  end
  # def lado
  #   @lado
  # end
end
r1 = Rectangulo.new(10, 20)
c1 = Cuadrado.new(2)
 puts "El perimetro del cuadrado es #{c1.perimetro(c1.lado)}"
 puts "El area del cuadrado es #{c1.area(c1.lado)}"
 puts "............................................."
 puts "el perimetro del rectangualo es #{r1.perimetro(r1.base, r1.altura)}"
 puts "el area del rectangualo es #{r1.area(r1.base, r1.altura)}"
