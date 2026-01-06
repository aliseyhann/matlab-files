%% Create Row Vectors
Grades = [80, 100, 70, 50];             % A numeric array consists of 4 elements (a row vector)
Words = ["Computer", "Programming"];    % A string array (consists of 2 elements) Stored into 2 cells (check workspace)
Words2 = ['Computer', 'Programming'];   % A char array (consists of 2 elements) Stored into 1 cell (check workspace)

%% Create Column Vectors
Grades2 = [80; 100; 70; 50];             % A numeric array consists of 4 elements (a column vector)
Words3 = ["Computer"; "Programming"];    % A string array consists of 2 elements

%% Transpose
Grades3 = Grades';
Words4 = transpose(Words);

%% Constant Spaces
step1 = 1: 5: 20;
step2 = 2.5: 0.5: 7.5;
step3 = 1: 30;
step4 = 21: -3: 6;
step5 = 0: pi/10: pi;

%% Linspace function
% Syntax is linspace(x, y, n)
%   where x is first element, y is last element, n is number of elements

var1 = linspace(0, 8, 6);    % Produce 6 elements with the step size of 1.6 
                             % which is automaticlly determined [(y-x)/n-1].
                             % equal with writing --> 0: 1.6: 8
                            
var2 = linspace(50, 0);      % When you omit the third parameter (n), it 
                             % it produces 100 numbers.

%% Referencing the elements of a vector
fourthElement = Grades(4);
lastElement = Grades(end);
subGrades = Grades(1:3);
allGrades = Grades(:)       % all grades in one vector, this usage more
                            % useful for matrices
subGrades2 = Grades(1: 2: end);
subGrades3 = Grades(3: end);
decreasedGrades = Grades(end: -1: 1);
specificGrades = Grades([2, 4]);

%% Assign new values to a vector
Grades(1) = 60;
Grades(7) = 90;

%% Delete an element form a vector
Grades(6) = [];
Grades(5:7) = [];
%% Use vector elemetns in calculations
newGrade = Grades(1) + Grades(2);

%% Combination of the vectors
a = 1: 3;
b = 4: 6;
c = [a b];
%d = [a; b];
