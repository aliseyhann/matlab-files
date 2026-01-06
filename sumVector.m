function result = sumVector(x)
% -----------------------------------------------------
% sumVector.m
% -----------------------------------------------------
% sumVector sums the elements of a vector
% -----------------------------------------------------
% Syntax: result = sumVector(x)
% x is the vector of numbers
% result is the sum of the elements in the vector
% -----------------------------------------------------
% Examples: r = sumVector([6, 3, 8, 12]); results in r = 29
% -----------------------------------------------------
result = 0.0;
for k = 1:1:length(x)
 result = result + x(k);
end
end