8.5.2	Legnagyobb prím osztó
Keresse meg a legnagyobb prím osztóját a 4512854875 számnak! Az eredményt írja ki a képernyőre!

CLASS z_greatest_prime DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES:
      if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_greatest_prime IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.
    DATA x TYPE int8 VALUE 4512854875.
    DATA osztok TYPE TABLE OF i.
    DATA primek TYPE TABLE OF i.
    DATA szam TYPE i VALUE 2.
    DATA is_prime TYPE i.
    DATA index TYPE i.
    DATA prime type i.

    DO 1000 TIMES.
        is_prime = 1.

        LOOP AT primek INTO prime.
            IF szam MOD prime = 0. " Ha az aktuális szám osztható egy már meglévő prímszámmal
                is_prime = 0. " Nem prímszám
                EXIT. " Kilépés a belső ciklusból
            ENDIF.
        ENDLOOP.

        IF is_prime = 1. " Ha a szám prímszám
            APPEND szam TO primek. " Hozzáadjuk a prímszámok tömbjéhez
        ENDIF.

        szam = szam + 1. " Következő számra lépés
    ENDDO.


    WHILE x > 1.
        LOOP AT primek INTO prime.
            IF x MOD prime = 0.
                x = x / prime.
                APPEND prime TO osztok.
                EXIT. " Kilépés, ha találtunk osztót
            ENDIF.
        ENDLOOP.
   ENDWHILE.

    out->write( osztok ).
    SORT osztok DESCENDING.
    DATA legnagyobb_oszto TYPE i.
    legnagyobb_oszto = osztok[ 1 ].
    out->write( |Legnagyobb oszto: { legnagyobb_oszto }| ).



    ENDMETHOD.
ENDCLASS.