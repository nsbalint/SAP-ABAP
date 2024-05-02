5.3.4	Medián számítás
Definiáljon 10 egész számot és adjon értékül tetszőleges generált értéket! Számítsa ki a számok medián értékét és írja ki a standard kimenetre!

ENDCLASS.CLASS z_median DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES:
      if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_median IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.
    DATA: szamok TYPE TABLE OF i,
          median TYPE p DECIMALS 1.

    DATA random  TYPE i.
    DATA egesz_rand TYPE i.

    DO 10 TIMES.
    random = sy-uzeit + sy-index.
    egesz_rand = cl_abap_random_int=>create( seed = random
                                       min  = 1
                                       max = 100 )->get_next( ).
    APPEND egesz_rand TO szamok.
    ENDDO.

    SORT szamok ASCENDING.
    out->write( szamok ).


   median = ( szamok[ 5 ] + szamok[ 6 ] ) / 2.

   out->write( median ).


    ENDMETHOD.
ENDCLASS.