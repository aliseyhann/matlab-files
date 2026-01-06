%%%%%% Control statements %%%%%%%%

% 1) Decision Making Statements: 

%% Sample for if...end statement
    
% sample 1
    a = 10;
    
    if a < 20
        %fprintf('a is less than 20\n');
        disp('a is less than 20');
    end
    
% sample 2
    age = [5 3 50 23 56 87 12 45];
    
    if any(age > 80)
        disp('there is a number larger than 80');
        index = find(age > 80);
        fprintf('%d th element\n', index);
    end
    
%% Sample for if...else...end statement
    
    A = [];
    
    if isempty(A)   %% isempty function Returns a 1 if X is an empty matrix and 0 otherwise
        disp('Array is empty');
    else
        disp('Array have some elements inside it');
    end
    
%% Sample for if...elseif...end statement
    
% sample 1
    num1 = input('Enter the first number:- ');
    num2 = input('Enter the second number:- ');
 
    if((num1 > 0 && num2 > 0) || (num1 < 0 && num2 < 0))
        disp('The product of the two numbers will be positive');
 
    elseif((num1 > 0 && num2 < 0) || (num1 < 0 && num2 > 0))
        disp('The product of the two numbers will be negative');
    else
        disp('The product of the two numbers will be zero');
    end
    
% sample 2
    patientOxygenLevel = 90;
    
    if patientOxygenLevel >= 80 && patientOxygenLevel < 100     %if both condition is true then run the disp function
        disp('Normal level');
    elseif patientOxygenLevel < 80
        disp('low');
    else
        disp('high');
    end
    
%% Sample for nested if statement
    
    ageOfPatients = 70;
    genderOfPatients = 'female';
    
    if ageOfPatients > 60
        if genderOfPatients == 'female'
            disp('Patients is older than 60 and female');
        else
            disp('Patients is older than 60 and male');
        end
    else
        fprintf('Patients is younger than 60 and the age is %d\n', ageOfPatients);
    end
        
%% An Example
    name = input('what is your name: ', 's');
    age = input('what is your age: ');
 
    if age <= 12  
        message = sprintf("You are a child %s", name);  %if we use sprint f we can store the output sentence
        disp (message)
    elseif age > 12 && age <=18
        message = sprintf("You are still child %s", name);
        disp (message)
    elseif age > 18 && age <=40
        message = sprintf("You are young adult %s", name);
        disp (message)
        %fprintf("You are young adult %s\n", name);
end 

%% Sample for switch statement

% sample 1
    x = input('Enter a number (-1, 0 or 1): ');
    
    switch x
    case -1
        disp('negative one')
    case 0
        disp('zero')
    case 1
        disp('positive one')
    otherwise
        disp('other value')
    end
    
% sample 2
    Answer = input('Do you like MATLAB? [y/n/?]: ', 's');

    switch (Answer)
        case {'y', 'Y'}
            fprintf('I''m glad to hear you like MATLAB\n')
        case {'n', 'N'}
            fprintf('What''s not to like?\n')
        case '?'
            fprintf('Haven''t made up your mind yet have you?\n')
        otherwise
            fprintf('Non comprendo!\n')
    end

% sample 3
    
    data = [12 64 24 8 50];
    plottypes = {'pie3' 'bar'};
 
    switch plottypes{2}
    case 'bar' 
        bar(data)
        title('Bar Graph')
    case {'pie','pie3'}
        pie3(data)
        title('Pie Chart')
    otherwise
        warning('Unexpected plot type. No plot created.')
    end
    
% Sample 4
    grade = 'B';
    switch(grade)
        case 'A' 
            fprintf('Excellent!\n' );
        case 'B' 
            fprintf('Well done\n' );
        case 'C' 
            fprintf('Well done\n' );
        case 'D'
            fprintf('You passed\n' );
        case 'F' 
            fprintf('Better try again\n' );
        otherwise
            fprintf('Invalid grade\n' );
    end

%sample 5
    color = 'rose';
 
    switch lower(color)
        case {'red', 'light red', 'rose'}
            disp('color is red')
        case 'blue'
            disp('color is blue') 
        case 'white'
            disp('color is white')  
        otherwise
            disp('Unknown color.')
    end
    
%Sample 6
    disp('1. Sum.');
    disp('2. Abs');
    disp('3. Multiplication.');
    disp('4. largest number.');
    disp('5. smallest number');
    
    i = input('Which operation do you want to perform : ');
 
    x = input('Enter first number : ');
    y = input('Ender second number : ');
 
    switch (i)
        case 1
            value = x+y;
        case 2
            value = abs(x-y);
        case 3
            value = x*y;
        case 4
            value = max(x,y);
        case 5
            value = min(x,y);
        otherwise
            value = 'Wrong value.';
    end
    
    disp(value);
