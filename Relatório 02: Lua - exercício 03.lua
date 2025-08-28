local vetortabela = {}
print("Digite a quantidade de números que deseja inserir na tabela: ")
local n = tonumber(io.read())
local novatabela = {}
local quantidadepares = 0

print("Digite os numeros da tabela: ")
for i = 1, n do
    vetortabela[i] = tonumber(io.read())
   if vetortabela[i]%2 == 0 then
      table.insert(novatabela, vetortabela[i])
      quantidadepares = quantidadepares + 1
  end
end

if quantidadepares == 0 then
  print("Não existe números pares na tabela")
else
  print("Os números pares encontrados na tabela são: ")
for i = 1, quantidadepares do
  print(novatabela[i])
end
end
