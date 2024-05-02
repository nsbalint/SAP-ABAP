6.6.3	Féléves eredmények
Írjon olyan futtatható ABAP állományt, amely a hallgató tantárgyának eredményéhez tárolásához szükséges adatokhoz (tantárgy kódja, tantárgy neve, érdemjegy (1,2,3,4,5), érdemjegy szövegesen (elégtelen, elégséges, közepes, jó, jeles) saját típusokat definiál. 
Hozzon létre 5 változót és töltse fel adatokkal. A tantárgy kódját és nevét tetszőlegesen megválaszthatja, a tantárgy érdemjegyét véletlenszerűen generálja! Írja ki a változók tartalmát a képernyőre!


CLASS z_uniclass DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
      if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_uniclass IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.

    TYPES: BEGIN OF student,
        subject_code TYPE c LENGTH 3,
        subject_name TYPE string,
        grade TYPE i,
        grade_written TYPE string,
    END OF student.

    DATA random  TYPE i.
    DATA egesz_rand TYPE i.
    random = sy-uzeit.
    egesz_rand = cl_abap_random_int=>create( seed = random
                                       min  = 1
                                       max = 5 )->get_next( ).

    DATA aladar TYPE student.
        aladar-subject_code = 'PRG'.
        aladar-subject_name = 'Programozas'.
        aladar-grade = egesz_rand.
        CASE aladar-grade.
        WHEN 1.
            aladar-grade_written = 'elegtelen'.
        WHEN 2.
            aladar-grade_written = 'elegseges'.
        WHEN 3.
            aladar-grade_written = 'kozepes'.
        WHEN 4.
            aladar-grade_written = 'jo'.
        WHEN 5.
            aladar-grade_written = 'jeles'.
        ENDCASE.

    random = sy-uzeit + 1.
    egesz_rand = cl_abap_random_int=>create( seed = random
                                       min  = 1
                                       max = 5 )->get_next( ).


    DATA bela TYPE student.
        bela-subject_code = 'ART'.
        bela-subject_name = 'Rajz'.
        bela-grade = egesz_rand.
        CASE bela-grade.
        WHEN 1.
            bela-grade_written = 'elegtelen'.
        WHEN 2.
            bela-grade_written = 'elegseges'.
        WHEN 3.
            bela-grade_written = 'kozepes'.
        WHEN 4.
            bela-grade_written = 'jo'.
        WHEN 5.
            bela-grade_written = 'jeles'.
        ENDCASE.

    random = sy-uzeit + 2.
    egesz_rand = cl_abap_random_int=>create( seed = random
                                       min  = 1
                                       max = 5 )->get_next( ).

    DATA csaba TYPE student.
        csaba-subject_code = 'MAT'.
        csaba-subject_name = 'Matematika'.
        csaba-grade = egesz_rand.
        CASE csaba-grade.
        WHEN 1.
            csaba-grade_written = 'elegtelen'.
        WHEN 2.
            csaba-grade_written = 'elegseges'.
        WHEN 3.
            csaba-grade_written = 'kozepes'.
        WHEN 4.
            csaba-grade_written = 'jo'.
        WHEN 5.
            csaba-grade_written = 'jeles'.
        ENDCASE.

    random = sy-uzeit + 3.
    egesz_rand = cl_abap_random_int=>create( seed = random
                                       min  = 1
                                       max = 5 )->get_next( ).

    DATA david TYPE student.
        david-subject_code = 'CHE'.
        david-subject_name = 'Kémia'.
        david-grade = egesz_rand.
        CASE david-grade.
        WHEN 1.
            david-grade_written = 'elegtelen'.
        WHEN 2.
            david-grade_written = 'elegseges'.
        WHEN 3.
            david-grade_written = 'kozepes'.
        WHEN 4.
            david-grade_written = 'jo'.
        WHEN 5.
            david-grade_written = 'jeles'.
        ENDCASE.


    random = sy-uzeit + 4.
    egesz_rand = cl_abap_random_int=>create( seed = random
                                       min  = 1
                                       max = 5 )->get_next( ).

    DATA elemer TYPE student.
        elemer-subject_code = 'HIS'.
        elemer-subject_name = 'Történelem'.
        elemer-grade = egesz_rand.
        CASE elemer-grade.
        WHEN 1.
            elemer-grade_written = 'elegtelen'.
        WHEN 2.
            elemer-grade_written = 'elegseges'.
        WHEN 3.
            elemer-grade_written = 'kozepes'.
        WHEN 4.
            elemer-grade_written = 'jo'.
        WHEN 5.
            elemer-grade_written = 'jeles'.
        ENDCASE.


    out->write( aladar ).
    out->write( bela ).
    out->write( csaba ).
    out->write( david ).
    out->write( elemer ).



    ENDMETHOD.
ENDCLASS.