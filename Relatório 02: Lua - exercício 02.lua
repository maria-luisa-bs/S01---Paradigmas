local vetortabela = {}
print("Digite a quantidade de números que deseja inserir na tabela: ")
local n = tonumber(io.read())
local maiornum

for i = 1, n do
    vetortabela[i] = tonumber(io.read())
    if i == 1 then
        maiornum = vetortabela[i]
  end
  if vetortabela[i] > maiornum then
      maiornum = vetortabela[i]
  end
end

print("O maior número encontrado na tabela foi: " .. maiornum)
