function calculadora(a, b, operador)
    if operador == "+" then
        return a + b
    elseif operador == "-" then
        return a - b
    elseif operador == "*" then
        return a * b
    elseif operador == "/" then
        if b == 0 then
            return "Divisão por zero, não é possível realizar a operação"
        else
            return a / b
        end
    else
        return "Operador inválido"
    end
end

print("Digite o primeiro número:")
local numero1 = tonumber(io.read())

print("Digite o segundo número:")
local numero2 = tonumber(io.read())

print("Digite o operador (+, -, * ou /):")
local operacao = io.read()

local resultado = calculadora(numero1, numero2, operacao)
print("Resultado: " .. tostring(resultado))
