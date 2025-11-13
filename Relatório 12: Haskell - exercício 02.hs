data Item = Item { nome :: String, categoria :: String, preco :: Double }
    deriving (Show) 

data CompraZelda = CompraZelda { itensComprados :: [Item] }
    deriving (Show)

precoItem :: Item -> Double
precoItem (Item _ _ p) = p

calculaTotalItens :: CompraZelda -> Double
calculaTotalItens compra = sum (map precoItem (itensComprados compra))

calculaDesconto :: CompraZelda -> Double
calculaDesconto compra
    | calculaTotalItens compra > 200.0 = calculaTotalItens compra * 0.10
    | otherwise                        = 0.0

valorFinal :: CompraZelda -> Double
valorFinal compra
    | calculaTotalItens compra > 200.0 = calculaTotalItens compra - calculaDesconto compra
    | otherwise                        = calculaTotalItens compra + 15.0

itemA = Item "MasterSword" "Arma" 200.0
itemB = Item "Pocao Cura" "Poção" 50.0
itemC = Item "Flechas" "Equipamento" 10.0

compra1 = CompraZelda [itemA, itemB]

compra2 = CompraZelda [itemB, itemC]

compra3 = CompraZelda [itemA, itemB, itemC]

main :: IO ()
main = do
    putStrLn "Simulação de Compras nas Lojas de Hyrule"
    
    putStrLn "\nCompra 1: Total Bruto 250.0 (DESCONTO)"
    putStr "Valor Total: R$ "
    print (valorFinal compra1)
    putStr "Desconto Aplicado: R$ "
    print (calculaDesconto compra1)

    putStrLn "\nCompra 2: Total Bruto 60.0"
    putStr "Valor Total: R$ "
    print (valorFinal compra2)
    putStr "Frete Fixo: R$ 15.0"

    putStrLn "\nCompra 3: Total Bruto 260.0"
    putStr "Valor Total: R$ "
    print (valorFinal (CompraZelda [itemA, itemB, itemC]))
