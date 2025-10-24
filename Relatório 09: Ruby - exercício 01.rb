class Drink
    attr_reader :name  
    
    def initialize(name, price)
        @name = name
        @price = price
    end

    def price  
        @price
    end

    def price=(new_price) 
        @price = new_price if new_price.is_a?(Numeric) && new_price > 0 
    end

    def to_s
        "Nome: #{@name}, Preço: #{@price}"
    end
end

class DrinkLenda < Drink
    attr_accessor :years 

    def initialize(name, price, years)    
        super(name, price)
        @years = years
    end

    def price_final
        @price + (@years * 5)
    end

    def to_s
        "Nome: #{@name}, Preço de base: #{@price}, Anos: #{@years}, Preço Final: #{price_final}"
    end
end

puts("Insira o nome da bebida que deseja: ") 
nome = gets.chomp

puts("Insira o preço de base: ")
price = gets.chomp.to_f 

puts("Deseja uma bebida lenda ou uma bebida comum? ")
tipo = gets.chomp
if tipo == "lenda"       
    puts("Insira os anos desde a criação: ")
    years = gets.chomp.to_i  
end

puts("Mostrando os dados")
if tipo == "lenda"
    drink = DrinkLenda.new(nome, price, years) 
    puts(drink)
else
    drink = Drink.new(nome, price)
    puts(drink)
end
