function calculadora(a, b, op)
  if op == "+" then
    return a + b
  elseif op == "-" then
    return a - b
    elseif op == "*" then
      return a * b
    elseif op == "/" then
      return a / b
  else
    print("Operação inválida")
    end
  end

print("Digite o primeiro número: ")
local num1 = tonumber(io.read())
print("Digite o segundo número: ")
local num2 = tonumber(io.read())
print("Digite a operação desejada (+, -, *, /): ")
local operador = io.read()

local resultado = calculadora(num1, num2, operador)
if resultado == nil then
else
print ("Resultado: ")
print(resultado)
end
