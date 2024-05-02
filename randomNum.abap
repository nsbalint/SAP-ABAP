Írjon olyan futtatható ABAP állományt, amely 100 véletlen egész számot generál a 0 – 100 intervallumban! 
Írja ki a képernyőre a legkisebb és legnagyobb számot! 
Amennyiben generálás során a – végül – legkisebb, vagy legnagyobb szám többször került generálásra, akkor írja ki az ismétlések számát is!

CLASS z_findminmax DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
      if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_findminmax IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.

    DATA szamok TYPE TABLE OF i.
    DATA random  TYPE i.
    DATA egesz_rand TYPE i.

    DO 100 TIMES.
    random = sy-uzeit + sy-index.
    egesz_rand = cl_abap_random_int=>create( seed = random
                                       min  = 0
                                       max = 100 )->get_next( ).
    APPEND egesz_rand TO szamok.
    ENDDO.

    DATA: min type i value 100,
          max type i value 0,
          min_counter type i value 0,
          max_counter type i value 0.

    DO 100 TIMES.
        IF min GT szamok[ sy-index ].
            min = szamok[ sy-index ].
        ENDIF.
         IF max LT szamok[ sy-index ].
            max = szamok[ sy-index ].
        ENDIF.
    ENDDO.

    DO 100 TIMES.
        IF min EQ szamok[ sy-index ].
            min_counter = min_counter + 1.
        ENDIF.
        IF max EQ szamok[ sy-index ].
            max_counter = max_counter + 1.
        ENDIF.
    ENDDO.

    out->write( szamok ).
    out->write( |min: { min } min count: { min_counter } max: { max }  max count: { max_counter }| ).



    ENDMETHOD.
ENDCLASS.