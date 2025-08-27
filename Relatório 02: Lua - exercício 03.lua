function filtropares(tabela)
    local pares = {}
    for i = 1, #tabela do
        if tabela[i] % 2 == 0 then
            table.insert(pares, tabela[i])
        end
    end
    return pares
end

print("Digite a quantidade de números que contém na tabela:")
local n = tonumber(io.read())

local numeros = {}

print("Digite os números que serão inseridos da tabela:")
for i = 1, n do
    numeros[i] = tonumber(io.read())
end

local parestabela = filtropares(numeros)


print("Números da nova tabela:")
for i = 1, #parestabela do
    io.write(parestabela[i] .. " ")
end
