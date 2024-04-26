4.5.4	Belépési adatok
Írjon programot amely kiírja a rendszer belépési adatait (felhasználó azonosítója, rendszer dátum és idő, belépési kliens és belépési nyelv)!

CLASS z_login_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
        if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS z_login_data IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.

    "Rendszer dátum és idő
    DATA: lv_system_time TYPE timestampl,
          lv_system_date TYPE d,
          lv_system_time_formatted TYPE string.

    "Belépési adatok
    DATA: lv_user TYPE sy-uname,
          lv_client TYPE sy-mandt,
          lv_language TYPE sy-langu.

    "Rendszer dátum és idő lekérése
    GET TIME STAMP FIELD lv_system_time.
    lv_system_date = sy-datum.
    lv_system_time_formatted = lv_system_time.
    lv_system_time_formatted = lv_system_time_formatted+8(6).

    "Belépési adatok lekérése
    lv_user = sy-uname.
    lv_client = sy-mandt.
    lv_language = sy-langu.

    "Kiíratás
    out->write( |User: { lv_user }, Date: { lv_system_date }, Time: { lv_system_time_formatted }, Client: { lv_client }, Language: { lv_language }| ).

    ENDMETHOD.
ENDCLASS.
