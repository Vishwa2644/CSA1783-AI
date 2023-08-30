symptom(amit,fever).
symptom(amit,rash).
symptom(amit,headache).
symptom(amit,runny_nose).

symptom(suma,fever).
symptom(suma,hedache).
symptom(suma,rash).
symptom(suma,chills).



symptom(dipen, rash).
symptom(dipen, cough).
symptom(dipen, conjunctivitis).
symptom(dipen,fever).


hypothesis(Patient, measels) :-
    symptom(Patient, fever),
    symptom(Patient, cough),
    symptom(Patient, conjunctivitis),
    symptom(Patient, rash),
    write('Eat Salad\n').

hypothesis(Patient, german_measles) :-
    symptom(Patient, fever),
    symptom(Patient, headache),
    symptom(Patient, runny_nose),
    symptom(Patient, rash),
    write('Avoid Oily Food\n').

hypothesis(Patient, flu) :-
    symptom(Patient, fever),
    symptom(Patient, headache),
    symptom(Patient, chills),
    symptom(Patient, body_ache),
    write('Avoid Cold Food\n').

hypothesis(Patient, common_cold) :-
    symptom(Patient, headache),
    symptom(Patient, fever),
    symptom(Patient, chills),
    write('Take Green Vegetables\n').








