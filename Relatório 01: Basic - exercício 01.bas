10 INPUT "Digite a nota da NP1: "; NP1
20 INPUT "Digite a nota da NP2: "; NP2

30 NPA = (VAL(NP1) + VAL(NP2)) / 2

40 IF NPA >= 60 THEN PRINT "Aprovado direto"
50 IF NPA < 30 THEN PRINT "Reprovado direto"
60 IF NPA >= 30 AND NPA < 60 THEN INPUT "Insira a nota da NP3: "; NP3

70 IF NPA >= 30 AND NPA < 60 THEN NPT = (VAL(NPA) + VAL(NP3)) / 2

80 IF NPA >= 30 AND NPA < 60 AND NPT >= 50 THEN PRINT "Aprovado pela NP3"
90 IF NPA >= 30 AND NPA < 60 AND NPT < 50 THEN PRINT "Reprovado pela NP3"
100 END
