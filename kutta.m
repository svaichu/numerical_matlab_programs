% Runge-Kutta 4th order Method to find an approximate solution of y'=f(x,y)
% with y(x(0))=y(0)
clc; clear all;
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
 k2= h*f(x(i)+h/2,y(i)+k1/2);
 k3= h*f(x(i)+h/2,y(i)+k2/2);
 k4= h*f(x(i)+h,y(i)+k3);
 y(i+1)= y(i)+(k1+2*(k2+k3)+k4)/6; % y(i+1) by RK4M
end

% simply you can print by using [x', y'] at the end by taking proper care
% in the index !!

% OUTPUT 1 --------------------------------------------------------------
% Enter the function f(x,y) = (y-x)/(y+x)
% Enter the initial value of x = 0
% Enter the initial value of y = 1
% Enter the step length h = .02
% enter the x value for which y is to be evaluated = .1
% itr 	 x(i) 	 y(i)
% 0	 0.000000	 1.000000
% 1	 0.020000	 1.019610
% 2	 0.040000	 1.038479
% 3	 0.060000	 1.056659
% 4	 0.080000	 1.074195
% 5	 0.100000	 1.091127

% OUTPUT 2 --------------------------------------------------------------
% Enter the function f(x,y) = x+y
% Enter the initial value of x = 0
% Enter the initial value of y = 1
% Enter the step length h = .1
% enter the x value for which y is to be evaluated = .5
% itr 	 x(i) 	 y(i)
% 0	 0.000000	 1.000000
% 1	 0.100000	 1.110342
% 2	 0.200000	 1.242805
% 3	 0.300000	 1.399717
% 4	 0.400000	 1.583648
% 5	 0.500000	 1.797441

