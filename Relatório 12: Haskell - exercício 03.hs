data Banda = Banda { nomeBanda :: String, genero :: String, cache :: Double }
    deriving (Show)

data StatusEvento = Ativo | Encerrado | Cancelado
    deriving (Show, Eq) 

data Evento = Evento { bandasNoEvento :: [Banda], statusEvento :: StatusEvento }
    deriving (Show)

valorCache :: Banda -> Double
valorCache (Banda _ _ c) = c 

calculaCacheTotal :: Evento -> Double
calculaCacheTotal evento = sum (map valorCache (bandasNoEvento evento))

calculaTaxaProducao :: Evento -> Double
calculaTaxaProducao evento
    | calculaCacheTotal evento > 0.0 = calculaCacheTotal evento * 0.20 -- 20%
    | otherwise                      = 0.0

custoTotalEvento :: Evento -> Double
custoTotalEvento evento
    | statusEvento evento == Cancelado = 0.0
    | otherwise                        = calculaCacheTotal evento + calculaTaxaProducao evento

bandaAbertura :: Evento -> String
bandaAbertura evento =
    case bandasNoEvento evento of
        []    -> "Nenhuma banda escalada para a abertura."
        (x:_) -> nomeBanda x

bandaFechamento :: Evento -> String
bandaFechamento evento =
    case reverse (bandasNoEvento evento) of
        []    -> "Nenhuma banda escalada para o fechamento!"
        (x:_) -> nomeBanda x

bandaRock   = Banda "Linkin Park" "Rock" 350000.0
bandaPunk   = Banda "Fall Out Boy" "Punk Rock" 766550.0
bandaPop    = Banda "Taylor Swift" "Pop" 700000

eventoAtivo = Evento [bandaRock, bandaPunk] Ativo

eventoEncerrado = Evento [bandaPunk, bandaPop] Encerrado

eventoCancelado = Evento [bandaRock, bandaPop] Cancelado

main :: IO ()
main = do
    putStrLn "Simulação de Custos de Eventos"

    putStrLn "\nEvento Ativo"
    putStrLn $ "Banda de Abertura: " ++ (bandaAbertura eventoAtivo)
    putStrLn $ "Banda de Fechamento: " ++ (bandaFechamento eventoAtivo)
    putStr $ "Custo Total: R$ "
    print (custoTotalEvento eventoAtivo)

    putStrLn "\nEvento Encerrado"
    putStrLn $ "Banda de Abertura: " ++ (bandaAbertura eventoEncerrado)
    putStr $ "Custo Total: R$ "
    print (custoTotalEvento eventoEncerrado)

    putStrLn "\nEvento Cancelado"
    putStr $ "Custo Total: R$ "
    print (custoTotalEvento eventoCancelado)
