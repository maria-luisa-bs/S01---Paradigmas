(defstruct criatura
  nome
  ambiente
  periculosidade
  vida-media)

(defparameter *catalogo*
  (list
   (make-criatura :nome "Peeper"
                  :ambiente "Safe Shallows"
                  :periculosidade "Baixa"
                  :vida-media 10)
   
   ;; Um Reaper Leviathan (Periculosidade Alta).
   (make-criatura :nome "Reaper Leviathan"
                  :ambiente "Dunes"
                  :periculosidade "Alta"
                  :vida-media 100)
  
   (make-criatura :nome "Ghost Leviathan"
                  :ambiente "Deep"
                  :periculosidade "Alta"
                  :vida-media 150)
   
   (make-criatura :nome "Ampeel"
                  :ambiente "Deep"
                  :periculosidade "Media"
                  :vida-media 50)))

(defun filtra-por-perigo (catalogo-lista)
  (remove-if
       (string= (criatura-periculosidade c) "Baixa"))
   catalogo-lista))

(defun relatorio-profundidade (catalogo-lista)
 
  (let ((criaturas-deep
          (remove-if-not
               (string= (criatura-ambiente c) "Deep"))
           catalogo-lista)))
    
    ;; 4b. Mapear o resultado do filtro para o formato de string
    (mapcar
         (format nil "~a: Vive em ~a"
                 (criatura-nome c)
                 (criatura-ambiente c)))
     criaturas-deep)))
     
(format t "Catalogo: Testes~%~%")

(format t "Catalogo Completo:~%")
(format t "~a~%~%" *catalogo*)

(format t "Funcao 3: Filtro de Perigo:~%")
(format t "~a~%~%" (filtra-por-perigo *catalogo*))

(format t "Funcao 4: Relatorio de Profundidade (ambiente 'Deep'):~%")
(format t "~a~%~%" (relatorio-profundidade *catalogo*))
