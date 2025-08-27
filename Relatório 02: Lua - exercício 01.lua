print("Digite o valor de M: ")
local M = tonumber(io.read())

print("Digite o valor de N: ")
local N = tonumber(io.read())

print("Digite o valor de X: ")
local X = tonumber(io.read())

print("Múltiplos de " .. X .. " no intervalo de [" .. M .. ", " .. N .. "]:")

local contador = 0
for i = M, N do
    if i % X == 0 then
        print(i)
        contador = contador + 1
    end
end

print("Quantidade de múltiplos encontrados no intervalo: " .. contador)
