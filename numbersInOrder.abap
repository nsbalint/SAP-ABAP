7.5.1	Számok sorrendben
Írjon ABAP programot, amely kiírja a számokat -5-től 5-ig, majd vissza 1-es „lépésközt” használva!
A kimenetnek erre kell hasonlítania: -5 -4 -3 -2 -1 0 1 2 3 4 5 4 3 2 1 0 -1 -2 -3 -4 -5

CLASS z_number_step DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES:
      if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_number_step IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.

    DATA x type i value -5.
    DATA been_five type i value 0.

    DO 21 TIMES.
    out->write( x ).
    IF x LT 5 AND been_five EQ 0.
        x = x + 1.
    ELSEIF x = 5.
        been_five = 1.
        x = x - 1.
    ELSEIF x LT 5 AND been_five EQ 1.
        x = x - 1.
    ENDIF.
    ENDDO.

    ENDMETHOD.
ENDCLASS.