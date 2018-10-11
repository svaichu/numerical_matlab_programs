% Improved Euler Method to find an approximate solution of y'=f(x,y)
% with y(x(0))=y(0)
clear all
%input
f_in = input('Enter the function f(x,y) = ','s');
f = inline(f_in);
x(1) = input('Enter the initial value of x = ');
y(1) = input('Enter the initial value of y = ');
h = input('Enter the step length h = ');
xn  = input('enter the x value for which y is to be evaluated = ');
% main program
x = x(1):h:xn; % generating x values
N=length(x); % number of iterations to be performed
fprintf('itr \t x(i) \t y(i)\n')
for i=1:N
 fprintf('%d\t %f\t %f\n',i-1, x(i), y(i)); % print (x, y) in each iteration
 k1=h*(f(x(i),y(i))); 
 k2= h*f(x(i)+h,y(i)+k1); % avoids repeated calculations
 y(i+1)= y(i)+(k1+k2)/2; % y(i+1) by Improved EM
end
% simply you can print by using [x', y'] at the end by taking proper care
% in the index !!

% OUTPUT 1 --------------------------------------------------------------
% Enter the function f(x,y) = x+y
% Enter the initial value of x = 0
% Enter the initial value of y = 1
% Enter the step length h = .2
% enter the x value for which y is to be evaluated = 1
% itr 	 x(i) 	 y(i)
% 0	 0.000000	 1.000000
% 1	 0.200000	 1.240000
% 2	 0.400000	 1.576800
% 3	 0.600000	 2.031696
% 4	 0.800000	 2.630669
% 5	 1.000000	 3.405416
% OUTPUT 2 --------------------------------------------------------------
% Enter the function f(x,y) = (y-x)/(y+x)
% Enter the initial value of x = 0
% Enter the initial value of y = 1
% Enter the step length h = 0.02
% enter the x value for which y is to be evaluated = 0.1
% itr 	 x(i) 	 y(i)
% 0	 0.000000	 1.000000
% 1	 0.020000	 1.019615
% 2	 0.040000	 1.038489
% 3	 0.060000	 1.056673
% 4	 0.080000	 1.074213
% 5	 0.100000	 1.091148

% OUTPUT 3 --------------------------------------------------------------
% Enter the function f(x,y) = x*(x+y^2)
% Enter the initial value of x = 1
% Enter the initial value of y = 1
% Enter the step length h = .1
% enter the x value for which y is to be evaluated = 1.3
% itr 	 x(i) 	 y(i)
% 0	 1.000000	 1.000000
% 1	 1.100000	 1.239700
% 2	 1.200000	 1.597136
% 3	 1.300000	 2.179113

% OUTPUT 4 --------------------------------------------------------------
% Enter the function f(x,y) = x^2*(x+y)
% Enter the initial value of x = 1
% Enter the initial value of y = 1
% Enter the step length h = .1
% enter the x value for which y is to be evaluated = 1.3
% itr 	 x(i) 	 y(i)
% 0	 1.000000	 1.000000
% 1	 1.100000	 1.239150
% 2	 1.200000	 1.576666
% 3	 1.300000	 2.053451
