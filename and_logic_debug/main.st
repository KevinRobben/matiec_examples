PROGRAM My_Program
  VAR
    iniciar : BOOL := FALSE;
    parar : BOOL := FALSE;
    lamp : BOOL;
    test1 : SINT := 15;
    test2 : INT := 15;
    test3 : DINT := 15;
    test4 : LINT := 15;
    test5 : USINT := 15;
    test6 : UINT := 15;
    test7 : UDINT := 15;
    test8 : ULINT := 15;
    test9 : REAL := 15.0;
    test10 : LREAL := 15.0;
    test11 : TIME := T#14.7s;
    test12 : TIME := TIME#14ms;
    test13 : TIME := t#5d_14h_12m_18s_3.5ms;
    test14 : DATE := D#1984-06-25;
    test15 : TOD := TOD#15:36:55.36;
    test16 : DT := DT#1984-06-25-15:36:55.36;
    test17 : STRING := 'HELLO';
    test18 : BYTE := 15;
    test19 : WORD := 15;
    test20 : DWORD := 15;
    test21 : LWORD := 12315555;
    test22 : ARRAY [0..3] OF SINT;
    test23 : ARRAY [0..3] OF SINT;
    AND15_OUT : BOOL;
  END_VAR

  AND15_OUT := AND(iniciar, parar);
  lamp := AND15_OUT;
  test23[0] := test22[0];
END_PROGRAM


CONFIGURATION STD_CONF

  RESOURCE STD_RESSOURCE ON PLC
    TASK TaskMain(INTERVAL := T#50ms,PRIORITY := 0);
    PROGRAM Inst0 WITH TaskMain : My_Program;
  END_RESOURCE
END_CONFIGURATION
