CLASS z_system_date DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
      if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS z_system_date IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.
    DATA: system_date TYPE d.

        system_date = sy-datum.

        DATA(year) = system_date(4).
        DATA(month) = system_date+4(2).
        DATA(day) = system_date+6(2).

        out->write( |Present Date is: { system_date }| ).
        out->write( |Present Date is: { day }{ month }{ year }| ).
        out->write( |Present Date is: { month }{ day }{ year }| ).
  ENDMETHOD.
ENDCLASS.