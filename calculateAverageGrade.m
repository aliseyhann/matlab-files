function [Mean, Letter] = calculateAverageGrade(examGrades)

Mean = round(mean(examGrades));

if Mean >= 80 && Mean <100
    Letter = 'AA';
elseif Mean >= 60 && Mean < 80
    Letter = 'BB';
elseif Mean >= 40 && Mean < 60
    Letter = 'CC';
elseif Mean >= 20 && Mean < 40
    Letter = 'DD';
elseif Mean >= 0 && Mean < 20
    Letter = 'FF';
end