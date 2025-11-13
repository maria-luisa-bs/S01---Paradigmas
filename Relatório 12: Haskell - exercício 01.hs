data Bebida = Bebida {nome::String, tipo::String, preco::Double}
    deriving(Show)
    
data StatusPedido = Aberto | Entregue | Cancelado
    deriving(Show, Eq)

data Pedido = Pedido {bebidas::[Bebida], status::StatusPedido}
    deriving(Show)

precoBebida :: Bebida -> Double
precoBebida (Bebida _ _ p) = p

valorTotalPedido :: Pedido -> Double
valorTotalPedido pedido
    | status pedido == Cancelado = 0.00 
    | otherwise                  = sum (map precoBebida (bebidas pedido)) + 5.00

primeiraBebida :: Pedido -> String
primeiraBebida pedido =
    case bebidas pedido of
      []    -> "Lista de pedidos vazia" 
      (x:_) -> nome x

main :: IO ()
main = do
    let cafe    = Bebida "Cafe" "Cafe" 3.50
    let cha     = Bebida "Cha de Limao" "Cha" 4.00
    let suco    = Bebida "Suco de Laranja" "Suco" 6.50
    
    let pAberto = Pedido [cafe, cha] Aberto
    let pCancelado = Pedido [cafe, suco] Cancelado
    let pVazio  = Pedido [] Entregue

    putStrLn "Questão 01 (Café Leblanc) ☕"

    putStrLn $ "Pedido Aberto " 
    putStrLn $ "  - Primeira Bebida: " ++ (primeiraBebida pAberto)
    
    putStrLn $ "  - Valor Total: R$" ++ (show $ valorTotalPedido pAberto) 

    putStrLn "\nPedido Cancelado "
    putStrLn $ "  - Primeira Bebida: " ++ (primeiraBebida pCancelado)
  
    putStrLn $ "  - Valor Total: R$" ++ (show $ valorTotalPedido pCancelado) 

    putStrLn "\nPedido Vazio "
    putStrLn $ "  - Primeira Bebida: " ++ (primeiraBebida pVazio)
  
    putStrLn $ "  - Valor Total: R$" ++ (show $ valorTotalPedido pVazio)
