10 LET numero = INT((RND() * 100)+0)

20 INPUT "Insira um número 0 à 100: "; palpite

30 IF palpite < numero THEN PRINT "O número correto é MAIOR que seu palpite" 
35 IF palpite > numero THEN PRINT "O número correto é MENOR que seu palpite"
40 IF palpite < numero OR palpite > numero THEN GOTO 20
      
50 PRINT "Você adivinhou o número corretamete, parabéns!"
60 END
