class MicroondasUnidade
  attr_accessor :marca, :modelo, :cor, :preco, :potencia, :voltagem  #
  def initialize(marca, modelo, cor, preco, potencia, voltagem)
    @marca = marca
    @modelo = modelo
    @cor = cor
    @preco = preco
    @potencia = potencia
    @voltagem = voltagem
  end
end

class DMail < MicroondasUnidade
  attr_accessor :conteudo, :hora
  
  def initialize(marca, modelo, cor, preco, potencia, voltagem, conteudo, hora)
    super(marca, modelo, cor, preco, potencia, voltagem)
    @conteudo = conteudo
    @hora = hora
  end
  
  def enviar_email
    puts "Enviando email: #{@conteudo} às #{@hora}"
  end
end

class TelefoneDeMicroondas < MicroondasUnidade
  attr_accessor :numero, :dmails
  
  def initialize(marca, modelo, cor, preco, potencia, voltagem, numero)
    super(marca, modelo, cor, preco, potencia, voltagem)
    @numero = numero
    @dmails = []
  end
  
  def adicionar_dmail(dmail)
    @dmails << dmail
  end
  
  def listar_dmails_a_partir_de(hora_limite)
    @dmails.select { |dmail| dmail.hora >= hora_limite }
  end
end

puts "Quantos emails serão feitos?"
quantidade = gets.chomp.to_i

telefone = TelefoneDeMicroondas.new("LG", "LG123", "Preto", 1000, 1000, 220, "123456789")

for i in 1..quantidade
  puts "Conteúdo do email #{i}:"
  conteudo = gets.chomp
  puts "Hora do email #{i} (formato HH:MM):"
  hora = gets.chomp
  
  dmail = DMail.new("LG", "LG123", "Preto", 1000, 1000, 220, conteudo, hora)
  telefone.adicionar_dmail(dmail)
end

puts "Emails serão analisados a partir do horário definido: (formato HH:MM)"
hora_limite = gets.chomp

emails_filtrados = telefone.listar_dmails_a_partir_de(hora_limite)

if emails_filtrados.empty? ##validaçào horário
  puts "Nenhum email foi encontrado a partir de #{hora_limite}"
else
  puts "Emails a partir de #{hora_limite}:"
  emails_filtrados.each { |dmail| dmail.enviar_email }
  puts "Emails analisados: #{emails_filtrados.length}"
end
