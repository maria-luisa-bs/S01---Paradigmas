module Rastreavel
  def obter_localizacao(hora)
    puts "Localização foi obtida no horário: #{hora}"
  end
end

module Perigoso
  def calcular_risco
    puts "O risco foi calculado"
  end
end

class Participante
  attr_accessor :nome, :idade, :localizacao
  
  def initialize(nome, idade, localizacao)
    @nome = nome
    @idade = idade
    @localizacao = localizacao
  end
end

class Detetive < Participante
  include Rastreavel
  
  def investigar
    puts "#{@nome} está investigando..."
  end
end

class MestreDoCrime < Participante
  include Perigoso
  
  def planejar_crime
    puts "#{@nome} está planejando um crime..."
  end
end

class Cenario 
  attr_accessor :nome, :rastreaveis
  
  def initialize(nome)
    @nome = nome
    @rastreaveis = []
  end
  
  def adicionar_rastreavel(participante)
    @rastreaveis << participante
  end
  
  def identificar_ameacas
    criminosos = @rastreaveis.select { |p| p.respond_to?(:calcular_risco) }
    criminosos
  end
end

puts "Localização atual de Sherlock:"
localizacao_sherlock = gets.chomp
puts "Localização atual de Moriarty:"
localizacao_moriarty = gets.chomp

sherlock = Detetive.new("Sherlock Holmes", 35, localizacao_sherlock)
moriarty = MestreDoCrime.new("Professor Moriarty", 45, localizacao_moriarty)

cenario = Cenario.new("Londres Vitoriana")
cenario.adicionar_rastreavel(sherlock)
cenario.adicionar_rastreavel(moriarty)

puts "\n=== Lista de Alvos Perigosos ==="
alvos_perigosos = cenario.identificar_ameacas
if alvos_perigosos.empty?
  puts "Nenhum alvo considerado perigoso foi identificado"
else
  alvos_perigosos.each { |alvo| puts "- #{alvo.nome} em #{alvo.localizacao}" }
end
