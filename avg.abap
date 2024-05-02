9.3.3	Átlagszámítás
Generáljon belső táblázatot véletlen egész számokkal és számolja ki az elemek átlagát!

CLASS z_avg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES:
      if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_avg IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.

    DATA szamok TYPE TABLE OF i.
    DATA random  TYPE i.
    DATA egesz_rand TYPE i.
    DATA osszeg TYPE i VALUE 0.
    DATA atlag TYPE p DECIMALS 2.
    DATA x TYPE i value 10.

    DO x TIMES.
    random = sy-uzeit + sy-index.
    egesz_rand = cl_abap_random_int=>create( seed = random
                                       min  = 1
                                       max = 10000 )->get_next( ).
    APPEND egesz_rand TO szamok.
    osszeg = osszeg + egesz_rand.
    ENDDO.

    atlag = osszeg / x.

    out->write( szamok ).
    out->write( |átlag: { atlag }| ).

    ENDMETHOD.
ENDCLASS.