data Servico = Servico { nome :: String, tipo :: String, preco :: Double }
    deriving (Show)

data StatusAtendimento = EmAndamento | Finalizado | Cancelado
    deriving (Show, Eq) 

data Atendimento = Atendimento { servicosRealizados :: [Servico], statusAtendimento :: StatusAtendimento }
    deriving (Show)

precoServico :: Servico -> Double
precoServico (Servico _ _ p) = p 

calculaTotalBase :: Atendimento -> Double
calculaTotalBase atendimento = sum (map precoServico (servicosRealizados atendimento))

quantidadeServicos :: Atendimento -> Int
quantidadeServicos atendimento = length (servicosRealizados atendimento)

bonusEspiritual :: Atendimento -> Double
bonusEspiritual atendimento
    | quantidadeServicos atendimento > 3 = calculaTotalBase atendimento * 1.25
    | calculaTotalBase atendimento > 500.0 = calculaTotalBase atendimento * 0.90
    | otherwise                          = calculaTotalBase atendimento

valorFinalAtendimento :: Atendimento -> Double
valorFinalAtendimento atendimento
    | statusAtendimento atendimento == Cancelado = 0.0
    | otherwise                                = bonusEspiritual atendimento

descricaoPrimeiroServico :: Atendimento -> String
descricaoPrimeiroServico atendimento =
    case servicosRealizados atendimento of
        []    -> "Nenhum serviço registrado!"
        (x:_) -> "Serviço: " ++ nome x ++ ", Tipo: " ++ tipo x

sBanho      = Servico "Banho Purificador" "Banho" 150.0
sMassagem   = Servico "Massagem Espectral" "Massagem" 200.0
sBanquete   = Servico "Banquete Flutuante" "Banquete" 250.0
sChas       = Servico "Chá de Ervas" "Banho" 50.0

atendimento1 = Atendimento [sBanho, sMassagem, sBanquete, sChas, sChas] Finalizado
atendimento2 = Atendimento [sBanho, sMassagem, sBanquete] EmAndamento
atendimento3 = Atendimento [sMassagem, sBanquete] EmAndamento
atendimento4 = Atendimento [sBanho, sMassagem] Cancelado

main :: IO ()
main = do
    putStrLn "Simulação de Atendimentos"
    
    putStrLn "\nAtendimento 1: Bônus de 25%"
    putStrLn (descricaoPrimeiroServico atendimento1)
    putStr $ "Valor Final: R$ "
    print (valorFinalAtendimento atendimento1)
    
    putStrLn "\nAtendimento 2: Desconto de 10%"
    putStrLn (descricaoPrimeiroServico atendimento2)
    putStr $ "Valor Final: R$ "
    print (valorFinalAtendimento atendimento2)

    putStrLn "\nAtendimento 3: Sem Bônus/Desconto"
    putStr $ "Valor Final: R$ "
    print (valorFinalAtendimento atendimento3)
    
    putStrLn "\nAtendimento 4: Cancelado"
    putStr $ "Valor Final: R$ "
    print (valorFinalAtendimento atendimento4)
