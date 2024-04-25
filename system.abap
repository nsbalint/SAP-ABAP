
  //  4.5.3	Rendszerdátum
  //  Írjon programot, amely kiírja az aktuális rendszer dátumot 3 különböző formátumban!


CLASS z_sys_date DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
      if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS z_sys_date IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.
    DATA: sys_date TYPE d.

        sys_date = sy-datum.

        DATA(year) = sys_date(4).
        DATA(month) = sys_date+4(2).
        DATA(day) = sys_date+6(2).

        out->write( |Present Date is: { sys_date }| ).
        out->write( |Present Date is: { day }{ month }{ year }| ).
        out->write( |Present Date is: { month }{ day }{ year }| ).
  ENDMETHOD.
ENDCLASS.