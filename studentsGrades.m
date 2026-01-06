%% create table
numberOfStudents = input('Enter number of students: ');

for k = 1:numberOfStudents
 studentName = input('Enter student name: ', 's');
 midtermGrade = sprintf('Enter the midterm grade of %s: ', studentName);
 studentGrade = input(midtermGrade);
 allGrades = sprintf('Enter all grades of %s: ', studentName);
 [studentGrades] = input(allGrades);
 
 studentTable(k).name = studentName;
 studentTable(k).midtermgrade = studentGrade;
 studentTable(k).allgrades = studentGrades;
end

%% Options
disp('\n');
disp('1: Calculate average of midterms');
disp('2: Calculate average grade and letter grade of students');
disp('3: Plot the grades');
disp('4: Save the table');
disp('Press any key to exit');
selection = input('Enter a number to select operation: ');

switch selection
    case 1
        meanOfMidtermGrades = calculateMean([studentTable.midtermgrade]);
        fprintf('\nThe mean of the midterm grades of all students is %d\n', meanOfMidtermGrades);
    case 2
        for i=1:length(studentTable)
            [MeanGrade, LetterGrade] = calculateAverageGrade([studentTable(i).allgrades]);
            studentTable(i).meanGrade = MeanGrade;
            studentTable(i).letterGrade = LetterGrade;
            fprintf('The mean grades of %s is %d and the letter grade is %s\n', studentTable(i).name, studentTable(i).meanGrade, studentTable(i).letterGrade);
        end
    case 3
        bar([studentTable(1).allgrades; studentTable(2).allgrades]);
    case 4
        save studentTable2 
    otherwise
        disp('Exit')
end

%% import
load('studentTable2.mat', 'studentTable')

%save studentTable 


