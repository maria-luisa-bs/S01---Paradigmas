class Musico
  attr_accessor :nome, :instrumento
  
  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def tocar_partitura(peca)
    raise NotImplementedError, "Método deve ser implementado na subclasse"
  end
  
  def tocar
    puts "Tocando #{@instrumento}"
  end
end
    

class Pianista < Musico
  def tocar_partitura(peca)
    puts "Tocando partitura de piano: #{peca}"
  end
end

class Violinista < Musico
  def tocar_partitura(peca)
    puts "Tocando partitura de violino: #{peca}"
  end
end

class Maestro
  attr_accessor :nome
  
  def initialize(nome)
    @nome = nome
  end
  
  def iniciar_ensaio(peca, musicos)
    puts "Começando o ensaio da peça: #{peca}"
    musicos.each do |musico|
      musico.tocar_partitura(peca)
    end
  end
  
  def mudar_foco(musicos, estado)
    musicos.map do |musico|
      "#{musico.nome} está #{estado}"
    end
  end
end

puts "Qual o nome da peça que deseja tocar?"
peca = gets.chomp
puts "Quantos músicos?"
num = gets.chomp.to_i

musicos = []

num.times do |i|
  puts "Músico #{i+1} - Digite o nome:"
  nome = gets.chomp
  puts "Digite o tipo pianista/violinista:"
  tipo = gets.chomp.downcase
  
  if tipo == "pianista"    
    musicos << Pianista.new(nome, "piano")
  elsif tipo == "violinista"
    musicos << Violinista.new(nome, "violino")
  end
end

puts "Qual o nome do maestro?"
nome_maestro = gets.chomp
maestro = Maestro.new(nome_maestro)

maestro.iniciar_ensaio(peca, musicos)

foco_mensagens = maestro.mudar_foco(musicos, "concentrado")
foco_mensagens.each { |msg| puts msg }
