5.3.5	Minimum és maximum keresés
Definiáljon 10 egész számot és adjon értékül tetszőleges generált értéket! Írja ki a képernyőre a legkisebb és legnagyobb generált számot!

CLASS z_minmax DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES:
      if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_minmax IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.
    DATA: szamok TYPE TABLE OF i,
          median TYPE p.

    DATA random  TYPE i.
    DATA egesz_rand TYPE i.

    DO 10 TIMES.
    random = sy-uzeit + sy-index.
    egesz_rand = cl_abap_random_int=>create( seed = random
                                       min  = 1
                                       max = 100 )->get_next( ).
    APPEND egesz_rand TO szamok.
    out->write( szamok ).
   ENDDO.



    SORT szamok ASCENDING.

    DATA: min TYPE i,
          max TYPE i.

          min = szamok[ 1 ].
          max = szamok[ 10 ].

    out->write( |min: { min } max: { max }| ).


    ENDMETHOD.
ENDCLASS.