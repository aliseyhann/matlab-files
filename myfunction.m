function b = myfunction(a)  %3
   b = squareMe(a)+doubleMe(a); % 9 + 6
end

function y = squareMe(x)
   y = x.^2;
end

function y = doubleMe(x)
   y = x.*2;
end
