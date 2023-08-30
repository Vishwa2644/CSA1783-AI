
symptom(fever).
symptom(cough).
symptom(headache).

disease(cold).
disease(flu).
disease(migraine).

% Define disease symptoms
has_symptoms(cold, [fever, cough]).
has_symptoms(flu, [fever, cough, headache]).
has_symptoms(migraine, [headache]).

% Predicate to check if patient has symptoms
has_symptom(Patient, Symptom) :-
    write('Does the patient have '), write(Symptom), write('? (yes/no) '),
    read(Response),
    Response == yes.

has_disease(Patient, Disease) :-
    disease(Disease),
    has_symptoms(Disease, Symptoms),
    forall(member(Symptom, Symptoms), has_symptom(Patient, Symptom)).

% Entry point for diagnosis
diagnose(Patient, Diagnosis) :-
    findall(Disease, has_disease(Patient, Disease), Diagnoses),
    format('Possible diagnoses for ~w: ~w', [Patient, Diagnoses]),
    nl,
    (Diagnoses = [] -> Diagnosis = 'unknown'; Diagnoses = [Diagnosis | _]).

% Example query
?- diagnose(john, Diagnosis).
