%% 2) Iterative operations: 
% Control structures execute a group of instructions for a certain number 
% of times or as long as certain conditions are met
 
% Loops consist of several parts as follows;
 % 1) A parameter (or counter) to control the loop
 % 2) Initializaiton of this parameter
 % 3) A way to change the parameter each time trough the loop
 % 4) A comperison, using parameter, to a criterion used to decide when to
 % end the loop
 % 5) Calculation to do inside the loop
    
%% simple examples of for-loops
    
% for-loops - general form:
% -------------------------
%
%  for variable = expression     (%where expression is a row vector or a matrix)
%      statements ...
%  end
%
 
% sample 1a: integer limits
    for a = 10:20   
        %fprintf('value of a: %d\n', a);       
        disp('value of a:')
        disp(a)
    end

% sample 1b: integer limits
    for k=1:8                 
        fprintf('%2d  %6.2f\n', k, k^2);
    end
    
     for k=1:8                 
        fprintf('%2d  %6.2f\n', 2, 2^k);
     end
    
    % try also the following variations
    % ---------------------------------
    % for k=1:8,  fprintf('%2d  %6.2f\n', k, k^2),  end
    
% sample 1c: integer limits
    % computing finite sums with for-loops - sum and cumsum examples
    x = [10, -20, 30, 50, 5, 25];  
    Sum = 0;                   % initialize the sum
                        
    for k=1:length(x)       
         Sum = Sum + x(k);        % accumulate partial sums
         cumSum(k) = Sum;
    end
    
    
    withSumFunction = sum(x);
    withCumSumFunction = cumsum(x);
    
    clear k
    
% sample 2: step increment
    for a = 1.0: -0.1: 0.0      
        disp(a)
    end
  
% sample 3: any row vector
    for a = [24,18,17,23,28]    
        disp(a)
    end
    
% sample 4: any row vector - without keeping all values
    for k = [1,2,3,4,5]
        x = 3.0 + 0.1*k     % displays computed value of x, here x is scalar
    end

% sample 5a: any row vector - with keeping all values with given indexes
    clear x
    %x= zeros(1,3);
    for indexNumbers=[3,7,10]           % k runs successively through 
        x(indexNumbers) = 3 + 0.1*indexNumbers;    %construct k-th element of a vector x(k)
        %fprintf('%6.1f',x);  % diplay current elements of vector x 
        %fprintf('\n');       % display next x on new line
    end  
    
% sample 5b: any row vector - with keeping all values as a vector
    clear x
    %x= zeros(1,3);              % pre-allocate x to length 3
                                 % generally, preallocation speeds up processing
                                 % without this, you perform dynamic memory allocation
                                 % where size of x is dynamically increased
    index =1;
    for value=[3,7,10]           % value runs successively through the values of [3,7,10]
        x(index) = 3 + 0.1*value;    % x is an array
        disp(x);             % diplay current vector x
        index = index+1;
    end  
    
%sample 6: matrix
    k1 = [1; 0; -2];
    k2 = [0; 3; 1];
    
    x= zeros(size(k1));
    
    for k = [k1,k2]         
        x = 3.0 + 0.1*k;
        disp(x);
    end
                        
% sample 7: for-loops can contain if statements  
    g = [67, 85, 95, 87, 94, 75, 89, 70, 86];
    count = 0;

    for k = 1:length(g)         
        if g(k) >= 90           
            count = count + 1;    
        end                     
    end
    
    % or, more simply, replace if-end statements 
    % by count=count + (g(k)>=90); fo avoiding if-end
    
    for k = 1:length(g)         
        count=count + (g(k)>=90);                      
    end
    
    disp(count);
    
    % for avoiding for loop as well
    count2 = sum(g>=85 & g<90)
    
% sample 8: for-loops can contain switch statements
    
    data = [12 64 24 8 50];
    plottypes = {'pie3' 'bar' 'pareto'};
 
    for i=1:3
        figure 
        switch plottypes{i}
        case 'bar' 
            bar(data)
            title('Bar Graph')
        case {'pie','pie3'}
            pie3(data)
            title('Pie Chart')
        case 'pareto'
            pareto(data)
            title('pareto Chart')
        otherwise
            warning('Unexpected plot type. No plot created.')
        end
    end 
    
% sample 9
    scores = [76 45 98 90];
    theNumberOfPass = 0;
    
    for i=1:length(scores)
        if scores(i) > 60
            theNumberOfPass = theNumberOfPass + 1;
        end
    end
    
    disp(theNumberOfPass);
    
% sample 10

    a = 6;  % Find the factorial of a
    if (a<0)            
        disp('Negative Integer');
    elseif (a == 0)
        f = 1;
    else                    %if-else statements can contain for-loops 
        f = 1;
        for i = 1:a
            f = f*i;
        end % end for-loop
    end % end if-statement

    disp(f) 

% sample 11a: nested for-loops 
    N = 4; M = 3;

    for i=1:N               %for rows
        for j=1:M           %for columns
            A(i,j) = i+j;
        end
    end
    
    clear i j

% sample 11b: nested for-loops - row-wise version
    N=4; %row number
    M=3; 
    j=1:M;

    for i=1:N
        A(i,:) = i+j;
    end

% sample 11c: nested for-loops - column-wise version
    N=4; 
    M=3; % column number
    j=1:N;

    for i=1:M
        B(:,j) = i+j;
    end
    
%% conventional and forever while-loops 
% -----------------------
% conventional while-loop
% -----------------------
% while condition            % break out when condition is false
%    statements ...          % repeat if condition is true
% end
% -----------------------

% -----------------------
% forever while-loop
% -----------------------
% while 1                    % repeat forever
%    statements ...
%    if condition            % break out when condition is true 
%       break;
%    end
%    statements ...
% end
% -----------------------    
% sample 1   
    a = 10;
    
    while a < 20     %continue while a<20, break when a>20
        fprintf('value of a: %d\n', a);
        a = a + 1;      % update a manually 
    end
        
%%
% Note, the repetition variable k is automatically stepped 
%       through its range by the for-loop
%       whereas, in while-loops, k must be stepped through manually

%% Samples for break 
% sample 1: break with while loop
    a = 10;
    
    while (a < 20 )
        fprintf('value of a: %d\n', a);
        a = a + 1;
        if( a > 15)
         break;         % terminate the loop using break statement  
        end 
    end
    
% sample 2: break with infinite while loop

    count = 1;
    sum = 0;
    numberOfValues = input('Please enter the number of values that you want to sum: ');
            
    while 1     
        if count > numberOfValues
            break;
        end
                   
        prompt = ['Please enter ' num2str(count), '.number: '];
        x = input(prompt); 
        sum = sum + x;
        count = count +1;    
    end
    
    fprintf('\nThe sum of the numbers are: %d \n', sum);

% sample 3 : break with for loop

    y = [-2 -4 0 -4 3 7];

    % You're gonna test each element for a special condition
    for i = 1 : length(y)
        % Test for a greater-than-zero value
        if y(i) > 0
            break         % terminate loop execution
        end

        % If it does not meet your condition, you can follow with your code
        z = y(i) + 6;
        disp(z)  
    end
    
    disp('finished')
    

%% Samples for continue
% sample 1   
    a = 9;
    
    while a < 20
        a = a + 1; 
        
        if a == 15
            continue;         % skip the iteration 
        end
        
        fprintf('value of a: %d\n', a);
    end
          