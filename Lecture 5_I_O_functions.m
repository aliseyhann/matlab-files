%% Basic input/output Functions: Disp and input 
%Sample 1: simple display function
x = 10; 
disp('the value of x is:'); 
disp(x);

% Sample 2: reading an input for numerical values and characters
   % SYNTAX
   % x = input('enter x: ') ;               % numerical input, x can be a vector or matrix
   % x = input('enter string: ');           % string input, enclose in quotes ' ' 
   % x = input('enter string: ', 's');      % string input, quotes ' ' not needed

A = input('Enter a value');  

prompt = 'enter a 2x2 matrix A = ';
B = input(prompt);                              % enter --> [1 2; 3 4]

[numbers] = input('Please enter numbers: ');    % to enter multiiple input at a time
                                                % enter like [2,3]
    
word1 = input('enter string: ', 's');  %enter --> programming
word2 = input('enter string: ');      %enter --> 'programming'
word3 = input('enter string: ')       %enter --> programming  --> ERROR


%Sample 3
N=3; M=2;
prompt = ['enter a ', num2str(N),'x',num2str(M),' matrix A = '];
A = input(prompt);                      %enter --> [1 2; 3 4; 5 6]
disp(A);

%Sample 4
grades = input('Enter grades [midterm,quiz,final]: ');

%if individual use is needed
Midterm = grades(1);
Quiz = grades(2);
Final = grades(3);

finalGrade = (Midterm * 0.3) + (Quiz * 0.2) + (Final * 0.5);
%finalGrade = (grades(1) * 0.3) + (grades(2) * 0.2) + (grades(3) * 0.5);


%Sample 5
studentInfo = input('Please enter the student record info for exams: ');

    % Run the upper line and enter --> ['elif', 45, 67, 78]
    % Check workspace for studentInfo --> 1x7 char elif-CN
    
    % Run again and enter --> ["elif", 45, 67, 78]
    % Check workspace for studentInfo --> 1x4 string "elif"	"45"	"67"	"78"
    % Use items --> str2num(studentInfo{2}) + str2num(studentInfo{3})
    
    % Run again and enter --> {"elif", 45, 67, 78}
    % Check workspace for studentInfo --> 1x4 cell "elif"	45	67	78
    % Use items --> studentInfo{2} + studentInfo{3}
    

%% Advanced Output Formatting functions: fprintf and sprintf 
% fprintf (File PRINT Formatted) : Use this for printing text to a file or the command window, such as for logging. 
%                                  Also allow us to get user input
%                                  However, to terminate the display properly, you must end 
%                                  the text with the newline (\n) metacharacter.

% sprintf (String PRINT Formatted) : use this for creating a MATLAB string.
%                                    then display it with disp.
%                                    Use when you need to store formatted data in a string, 
%                                    such as for custom error messages



% Sample 1
name = 'Elif';
age = 38.5;

displayedMessage1 = sprintf('%s is %d years old', name, age);
displayedMessage2 = sprintf('%s is %f years old', name, age);
displayedMessage3 = sprintf('%s is %.1f years old', name, age);
disp(displayedMessage);

fprintf('%s is %d years old', name, age);
fprintf('%s is %.1f years old\n', name, age);

% Sample 2
name = 'Elif'

%Way 1 for reading age
prompt = sprintf('%s, Please enter your age: ', name);
age = input(prompt);

%Way 2 for reading age - not recommended 
fprintf('%s, Please enter your age: ', name);

%Way 3 for reading age
fprintf('%s, Please enter your age: \n', name);

%Way 4 for reading age - it works 
fprintf('%s, Please enter your age: ', name);
age = input("");

fprintf('%s is %d years old\n', name, age);

%% Formatting Operator
% Sample 1
fprintf('%10.6f\n',  100*pi)    % width 10, 6 decimal places
fprintf('% 10.6f\n', 100*pi)    % leave space before field
fprintf('%-10.6f\n', 100*pi)    % left-justify field
fprintf('%+10.6f\n', 100*pi)    % print + or – signs
fprintf('%10.0f\n',  100*pi     % no decimals
fprintf('%#10.0f\n', 100*pi)    % print decimal point
fprintf('%010.0f\n', 100*pi)    % pad with zeros 

% Sample 2
x = [5 10 15];
[x; x.^2]      % two rows
fprintf('x = %5.2f, x^2 = %6.2f\n',[x; x.^2]);


