person(likitha,'2003-05-02').
person(suma,'2003-01-05').
person(viswa,'2003-02-12').
person(subbu,'1967-09-27').
person(vimala,'1969-07-10').
age(Name,Age):-
    person(Name,DOB),
    get_year(DOB,YearOfBirth),
    get_current_year(CurrentYear),
    Age is CurrentYear-YearOfBirth.
get_current_year(CurrentYear):-
    get_time(TimeStamp),
    stamp_date_time(TimeStamp,Datetime, local),
    date_time_value(year,Datetime,CurrentYear).
get_year(DOB,YearOfBirth):-
   atom_chars(DOB,Chars),
   append(_,[Year1,Year2,Year3,Year4|_],Chars),
   atom_chars(YearAtom,[Year1,Year2,Year3,Year4]),
   atom_number(YearAtom,YearOfBirth).


