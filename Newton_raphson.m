%clear all
%Newton Raphson method to a find root of f(x)=0 when the initial guess is given
 
% f = inline(f1);
% df1 = input('Enter the first derivative function f`(x): ','s'); 
% df = inline(df1);
syms x
f(x)  = x*log10(x)-4.77;
df = diff(f,x);

%%
x(1) = input('Enter the initial approximation/guess = ','s');
max_itr = input('Enter the maximum no. of iterations = ','s');
tol = input('Enter the tolerance = ');
 
% Newton Raphson method main program

fprintf(' x(1)= %f\n', x(1));   % print the initial value

for i=1:max_itr-1 % Note: repeat until max_itr starting with zero
    
     x(i+1)= x(i)-f(x(i))/df(x(i)); 
      
     % print the approximate value in each iteration
     fprintf(' x(%d)= %f\n',i+1, x(i+1));
    
     err= x(i+1)-x(i);
     
   if(abs(err)<=tol)
     %ouput for the required tolerence
     fprintf('The  approximate root after %d iterations is %f',i+1, x(i+1));
     break;
   end
end

if(abs(err)>tol)
      %output when the given iterations are not sufficient
   fprintf('Insufficient no. of iterations');
end


 %%------------------------------------------------------------------------------ 
 %OUTPUT
% Enter the function f(x): x^2-x-2
% Enter the first derivative function f`(x): 2*x-1
% Enter the initial approximation/guess = 1
% Enter the maximum no. of iterations = 10
% Enter the tolerance = .01
%  x(1)= 1.000000
%  x(2)= 3.000000
%  x(3)= 2.200000
%  x(4)= 2.011765
%  x(5)= 2.000046
%  x(6)= 2.000000
% The  approximate root after 6 iterations is 2.000000>> 

 %%------------------------------------------------------------------------------ 
 %OUTPUT 2
% Enter the function f(x): x^2-x-2
% Enter the first derivative function f`(x): 2*x-1
% Enter the initial approximation/guess = 4
% Enter the maximum no. of iterations = 20
% Enter the tolerance = .01
%  x(1)= 4.000000
%  x(2)= 2.571429
%  x(3)= 2.078818
%  x(4)= 2.001967
%  x(5)= 2.000001
% The  approximate root after 5 iterations is 2.000001>> 

 %%------------------------------------------------------------------------------ 
 %OUTPUT 3
% Enter the function f(x): x^2-x-2
% Enter the first derivative function f`(x): 2*x-1
% Enter the initial approximation/guess = 0.1
% Enter the maximum no. of iterations = 10
% Enter the tolerance = .01
%  x(1)= 0.100000
%  x(2)= -2.512500
%  x(3)= -1.379694
%  x(4)= -1.038349
%  x(5)= -1.000478
%  x(6)= -1.000000
% The  approximate root after 6 iterations is -1.000000>> 