REPORT zcurso_o07.

SELECTION-SCREEN BEGIN OF BLOCK bl.

PARAMETER p_1bim(12) TYPE p DECIMALS 2.
PARAMETER p_2bim(12) TYPE p DECIMALS 2.
PARAMETER p_3bim(12) TYPE p DECIMALS 2.
PARAMETER p_4bim(12) TYPE p DECIMALS 2.

SELECTION-SCREEN END OF BLOCK bl.

START-OF-SELECTION.

  DATA ld_media(12) TYPE p DECIMALS 2.

  ld_media = ( p_1bim + p_2bim + p_3bim + p_4bim ) / 4.

  "=
  "<>
  "<
  ">
  "<="
  ">="
  "NOT

  "IF NOT ld_media < 60 'SE invertendo a lógica

  "IF ld_media < 60. "SE  "condição ou expressão retorna verdadeiro ou falso
  "WRITE: 'SUA MÉDIA ANUAL FOI DE', ld_media , ', VOCÊ ESTÁ REPROVADO!'.
  "ELSE. "SENÃO
  "WRITE: ' SUA MÉDIA ANUAL FOI', ld_media , ', VOCÊ ESTÁ APROVADO!'.

  "ENDIF.

  "Combinações de AND e OR

  "Verdadeiro AND Verdadeiro = Verdadeiro
  "Verdadeiro AND Falso      = Falso
  "Falso      AND Falso      = Falso

  "Verdadeiro OR Verdadeiro = Verdadeiro
  "Verdadeiro OR Falso      = Verdadeiro
  "Falso      OR Falso      = Falso

  " Verifica a média do aluno e imprime a mensagem correspondente
  IF ld_media >= 0 AND ld_media <= 50. " Se a média estiver entre 0 e 50
    WRITE: 'SUA NOTA FOI MUITO BAIXA, VOCÊ FOI REPROVADO!'.

  ELSEIF ld_media >= 51 AND ld_media <= 59. " Se a média estiver entre 51 e 59
    WRITE: 'SUA NOTA AINDA NÃO ALCANÇOU A APROVAÇÃO, VOCÊ ESTÁ EM RECUPERAÇÃO!'.

  ELSEIF ld_media >= 60 AND ld_media <= 100. " Se a média estiver entre 60 e 100
    WRITE: 'SUA NOTA ALCANÇOU O ESPERADO, APROVADO!'.

  ELSE.
    WRITE   'SUA NOTA É INCONSISTENTE NÃO PODE SER MAIOR QUE 100'.

  ENDIF.
