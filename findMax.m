function findMax
[x] = input('Enter a few numbers: '); 

maks= x(1);

for i=2:length(x)
    if x(i) > maks
        maks = x(i);
    end
end

disp(maks);
