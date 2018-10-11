%clear all
%Regula-Falsi method to a find root of f(x)=0 when the initial 
%guess is given
f1 = input('Enter the function f(x): ','s'); 
f = inline(f1);
x(1) = input('Enter the first initial approximation/guess = ');
x(2)=  input('Enter the second initial approximation/guess = ');
max_itr = input('Enter the maximum no. of iterations = ');
tol = input('Enter the tolerance = ');
 
% Regula-Falsi method main program

fprintf('x(1)= %f\n',  x(1));   % print the initial value
fprintf('x(2)= %f\n',  x(2));   % print the initial value

for i=2:max_itr-1 % Note: repeat until max_itr starting with zero
    
     x(i+1)= x(i)-((x(i)-x(i-1))/(f(x(i))-f(x(i-1))))*f(x(i)); 
      
     % print the approximate value in each iteration
     fprintf(' x(%d)= %f\n',i+1, x(i+1));
    
     err= x(i+1)-x(i);
     
   if(abs(err)<=tol)
     %ouput for the required tolerence
     fprintf('The  approximate root after %d iterations is %f ',i+1, x(i+1));
     break;
   end
end

if(abs(err)>tol)
      %output when the given iterations are not sufficient
   fprintf('Insufficient no. of iterations');
end


 %%------------------------------------------------------------------------------ 
 %OUTPUT
% Enter the function f(x): x^3-2*x-3
% Enter the first initial approximation/guess = 0
% Enter the second initial approximation/guess = 2
% Enter the maximum no. of iterations = 10
% Enter the tolerance = 0.01
% x(1)= 0.000000
% x(2)= 2.000000
% x(3)= 1.500000
% x(4)= 1.862069
% x(5)= 1.903201
% x(6)= 1.893086
% x(7)= 1.893288
% The  approximate root after 7 iterations is 1.893288
 %%------------------------------------------------------------------------------ 
 
