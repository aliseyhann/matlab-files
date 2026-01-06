% reads in the circle radius from the user
radiusOfCircle = input('Enter radius of circle in meters: '); 

%calls the circleDiameter function passing it the user-input radius value, 
%assigns the diameter that the function returns to the program variable 
%named diameterOfCircle
diameterOfCircle = circleDiameter(radiusOfCircle); 

% displays the diameter
disp('Circle has diameter');
disp(diameterOfCircle);