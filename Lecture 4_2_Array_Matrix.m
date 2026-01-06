%% Create Matrices
Grades = [80, 100, 70; 30, 50, 40; 90, 85, 100];    % Exam grades that belongs to 3 Students          
examNames = ["Midterm", "Quiz", "Final"];           % A string array 
studentNames = [""; "Emine"; "Elif"; "Tulay"];          % A string array 

%% Reaching the elements
Grades(2,3)         % returns 40, same as Grades(8)
Grades(5)           % returns 50

%% Create a combined matrix
examData = [studentNames, [examNames; Grades]];

%% Create sub matrices
finalGrades = examData(:, 4);
gradesOfSecondStudent = examData(3, :);
midtermAndQuiz = examData(:, 1:3);
gradesOfFirstTwoStudents = examData(1:3, :);
lastRow = examData(end, :);

examData(5, :) = ["Bernis", 55, 95, 75];             % Adding a new row
Grades(4, :) = [55, 95, 75];
examData(1:4, 5) = ["AverageGrade"; mean(Grades,2)]    % mean(Grades, 2) -> column vector containing the mean of each row.

%% Assign new values to an element
Grades(1, 3) = 20;
Grades(2:3, 3:4) = [10 5; 15 25];

%% Delete an element form a vector
examData(5, :) = [];                     % delete last student 
examData(:, 3) = [];                     % delete Quiz Grades 

%% Some of Useful functions 
size(Grades); % 3X3
max(Grades); % 90 100 100 for each column
max(Grades,[], 2); % 90 100 100 for each row
max(Grades,[],'all'); %100
min(Grades); % 30 50 40 for each column
sum(Grades); %200   235   210 for each column
mean(Grades)

%% Exercise
%https://www.cs.cornell.edu/courses/cs401/2001fa/Lecture03/Omaha/Omaha.html
% https://www.cs.cornell.edu/courses/cs401/2003fa/Lecture03/Tutorial2/Omaha.html
% https://homepages.see.leeds.ac.uk/~lecimb/matlab/exercises-1.html