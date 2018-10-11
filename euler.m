%Euler Method to find an approximate solution of y'=f(x,y) with y(x(0))=y(0)
clc
clear all
%input
f_in = input('Enter d func = ','s');
f = inline(f_in);
x(1) = input('Enter the initial x = ');
y(1) = input('Enter the initial y = ');
h = input('enter step length  = ');
xn  = input('enter the x value for which y is to be evaluated = ');
% main program
x = x(1):h:xn; % generating x values
N=length(x); % number of iterations to be performed
fprintf('itr \t x(i) \t y(i)\n')
for i=1:N
    fprintf('%d\t %f\t %f\n',i-1, x(i),y(i)); % print (x, y) in each iteration
    y(i+1) = y(i)+h*(f(x(i),y(i))); % main code
end

% simply you can print by using [x', y'] at the end by taking proper care
% in the index !!

% OUTPUT 1 --------------------------------------------------------------
% Enter the function f(x,y) = x+y
% Enter the initial value of x = 0
% Enter the initial value of y = 1
% Enter the step length h = .1
% enter the x value for which y is to be evaluated = 1
% itr 	 x(i) 	 y(i)
% 0	 0.000000	 1.000000
% 1	 0.100000	 1.100000
% 2	 0.200000	 1.220000
% 3	 0.300000	 1.362000
% 4	 0.400000	 1.528200
% 5	 0.500000	 1.721020
% 6	 0.600000	 1.943122
% 7	 0.700000	 2.197434
% 8	 0.800000	 2.487178
% 9	 0.900000	 2.815895
% 10 1.000000    3.187485
%OUTPUT2-------------------------------------------------------------------
% Enter the function f(x,y) = (y-x)/(y+x)
% Enter the initial value of x = 0
% Enter the initial value of y = 1
% Enter the step length h = 0.02
% enter the x value for which y is to be evaluated = 0.1
% itr 	 x(i) 	 y(i)
% 0	 0.000000	 1.000000
% 1	 0.020000	 1.020000
% 2	 0.040000	 1.039231
% 3	 0.060000	 1.057748
% 4	 0.080000	 1.075601
% 5	 0.100000	 1.092832


%OUTPUT 3------------------------------------------------------------------
% Enter the function f(x,y) = 2*exp(x)+x*exp(y)
% Enter the initial value of x = 0
% Enter the initial value of y = 1
% Enter the step length h = .1
% enter the x value for which y is to be evaluated = .2
% itr 	 x(i) 	 y(i)
% 0	 0.000000	 1.000000
% 1	 0.100000	 1.200000
% 2	 0.200000	 1.454235

%OUTPUT 4------------------------------------------------------------------
% Enter the function f(x,y) = 2*exp(x)*y+exp(y)
% Enter the initial value of x = 0
% Enter the initial value of y = 1
% Enter the step length h = .1
% enter the x value for which y is to be evaluated = .2
% itr 	 x(i) 	 y(i)
% 0	 0.000000	 1.000000
% 1	 0.100000	 1.471828
% 2	 0.200000	 2.232872