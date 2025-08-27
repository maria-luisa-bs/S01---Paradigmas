function maiorvalor(tabela)
    local maior = tabela[1]
    for i = 2, #tabela do
        if tabela[i] > maior then
            maior = tabela[i]
        end
    end
    return maior
end

print("Digite a quantidade de números na tabela:")
local n = tonumber(io.read())

local numeros = {}

for i = 1, n do
    print("Digite o número " .. i .. ":")
    numeros[i] = tonumber(io.read())
end

local max = maiorvalor(numeros)
print("O maior valor encontrado na tabela é: " .. max)
