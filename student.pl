% Define teacher-student-subject relationships
teaches_subject(ramesh, math).
teaches_subject(suresh, physics).
teaches_subject(harish, chemistry).

% Define student-subject relationships
enrolled_in_subject(liki, math).
enrolled_in_subject(suma, physics).
enrolled_in_subject(chinni, chemistry).
enrolled_in_subject(viswa, math).

% Define subject codes
subject_code(math, 101).
subject_code(physics, 102).
subject_code(chemistry, 103).


teacher_for_student_subject(Student, Subject, Teacher) :-
    teaches_subject(Teacher, Subject),
    enrolled_in_subject(Student, Subject).

subject_code_for_subject(Subject, Code) :-
    subject_code(Subject, Code).
