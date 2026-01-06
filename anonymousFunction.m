%% Anonymous Functions 
% fhandle = @(arglist) expression

%%
x=-3:0.1:3;
myfunction = @(vektor)3*vektor.^2+3*vektor+3;

fx = myfunction(x);
plot(x, fx);

ft = 3*x.^2+3*x+3;
figure
plot(x, ft);