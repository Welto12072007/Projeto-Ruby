require 'ruby2d'

# Classe base para formas
class Forma
  attr_accessor :x, :y, :cor, :vel_x, :vel_y

  def initialize(x, y, cor)
    @x = x
    @y = y
    @cor = cor
    @vel_x = rand(-3..3)
    @vel_y = rand(-3..3)
  end

  def mover
    @x += @vel_x
    @y += @vel_y
    @vel_x *= -1 if @x < 0 || @x > Window.width
    @vel_y *= -1 if @y < 0 || @y > Window.height
  end

  def desenhar
    raise NotImplementedError, "Implemente este método na subclasse"
  end
end

class Circulo < Forma
  attr_accessor :raio

  def initialize(x, y, raio, cor)
    super(x, y, cor)
    @raio = raio
  end

  def desenhar
    Circle.new(x: @x, y: @y, radius: @raio, color: @cor)
  end
end

class Quadrado < Forma
  attr_accessor :lado

  def initialize(x, y, lado, cor)
    super(x, y, cor)
    @lado = lado
  end

  def desenhar
    Square.new(x: @x, y: @y, size: @lado, color: @cor)
  end
end

# Rubi feito com dois triângulos
class Rubi < Forma
  attr_accessor :tamanho, :angulo

  def initialize(x, y, tamanho, cor)
    super(x, y, cor)
    @tamanho = tamanho
    @angulo = 0
  end

  def mover
    super
    @angulo += 2
  end

  def desenhar
    # Coordenadas dos triângulos
    ang = @angulo * Math::PI / 180
    t = @tamanho
    # Triângulo superior
    pts1 = [
      rot(@x, @y - t, ang),
      rot(@x - t * 0.6, @y, ang),
      rot(@x + t * 0.6, @y, ang)
    ].flatten
    # Triângulo inferior
    pts2 = [
      rot(@x - t * 0.6, @y, ang),
      rot(@x, @y + t * 0.7, ang),
      rot(@x + t * 0.6, @y, ang)
    ].flatten

    Triangle.new(x1: pts1[0], y1: pts1[1], x2: pts1[2], y2: pts1[3], x3: pts1[4], y3: pts1[5], color: @cor)
    Triangle.new(x1: pts2[0], y1: pts2[1], x2: pts2[2], y2: pts2[3], x3: pts2[4], y3: pts2[5], color: @cor)
    # Brilho
    Circle.new(x: @x, y: @y - t * 0.4, radius: t * 0.15, color: 'white', opacity: 0.3, z: 11)
  end

  private

  def rot(px, py, ang)
    dx = px - @x
    dy = py - @y
    [
      @x + dx * Math.cos(ang) - dy * Math.sin(ang),
      @y + dx * Math.sin(ang) + dy * Math.cos(ang)
    ]
  end
end

begin
  set title: "Rubi Animado - POO Ruby Visual"
  set background: 'black'

  formas = [
    Circulo.new(100, 100, 40, 'blue'),
    Quadrado.new(300, 200, 60, 'green'),
    Rubi.new(200, 150, 60, 'red')
  ]

  update do
    clear
    formas.each do |forma|
      forma.mover
      forma.desenhar
    end
  end

  show
rescue => e
  puts "Erro ao desenhar: #{e.message}"
end