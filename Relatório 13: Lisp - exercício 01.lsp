(defun calcula-dosagem (peso-kg idade-anos)
  (cond
    ((or (< idade-anos 5) (< peso-kg 20))
     10)
    
    ((and (>= idade-anos 5) (<= idade-anos 12) (>= peso-kg 20))
     25)
    
    (t 50)))

(defun ajusta-preco (preco-base nome-da-erva)
  (cond
    ((string= nome-da-erva "Ginseng")
     (* preco-base 3.0))
    
    ((string= nome-da-erva "Lotus")
     (* preco-base 1.5))
    
    (t preco-base)))
    
(format t "Farmacia: Testes~%")

(format t "Caso 1 (Paciente: 14 anos, 60kg):~%")
(format t "  Dosagem: ~a ml~%" (calcula-dosagem 60 14))
(format t "  Preco (Lotus, base 10): ~a moedas~%" (ajusta-preco 10 "Lotus"))

(format t "Caso 2 (Paciente: 4 anos, 18kg):~%")
(format t "  Dosagem: ~a ml~%" (calcula-dosagem 18 4))

(format t "Caso 3 (Paciente: 8 anos, 19kg):~%")
(format t "  Dosagem: ~a ml~%" (calcula-dosagem 19 8))

(format t "Caso 4 (Paciente: 10 anos, 25kg):~%")
(format t "  Dosagem: ~a ml~%" (calcula-dosagem 25 10))

(format t "Caso 5 (Preco Erva):~%")
(format t "  Preco (Ginseng, base 10): ~a moedas~%" (ajusta-preco 10 "Ginseng"))

;; Teste Preco (Regra 3: Erva comum)
(format t "Caso 6 (Preco Erva):~%")
(format t "  Preco (Camomila, base 10): ~a moedas~%" (ajusta-preco 10 "Camomila"))
