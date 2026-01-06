function [A, B] = sample_fct( x )
    a = 1 * x;
    b = 2 * x;
    
    [A.karesi, A.kubu] = call_functions( a );
    [B.karesi, B.kubu] = call_functions( b );
    
    function [one, two] = call_functions( input )
        one = calculate_one( input );
        two = calculate_two( input );
        
        function one = calculate_one( input )
            one = input.^2;
        end
        
        function two = calculate_two( input )
            two = input.^3;
        end
    end
end