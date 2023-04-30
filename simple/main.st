PROGRAM My_Program
  VAR
    iniciar AT %IX0.0 : BOOL := TRUE;
    parar AT %IX0.1 : BOOL := TRUE;
    lamp AT %QX0.0 : BOOL;
  END_VAR
  VAR
    AND15_OUT : BOOL;
  END_VAR

  AND15_OUT := AND(iniciar, parar);
  lamp := AND15_OUT;
END_PROGRAM
