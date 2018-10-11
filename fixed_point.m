% clc
% clear all
disp('Fixed Point method to a find root of f(x)=0 when the initial guess is given');
%input  Note: Convert f(x)=0 interms of x=g(x)
g1 = input('Enter the function g(x): ','s'); 
g = inline(g1);
x(1) = input('Enter the initial approximation/guess such that |g`(x)|<1 = ');

max_itr = input('Enter the maximum no. of iterations = ');
tol = input('Enter the tolerance = ');
 
% Fixed Point method main program

fprintf(' x(1)= %f\n', x(1));   % print the initial 'value
for i=1:max_itr-1 % Note: repeat until max_itr starting 
    %with zero
    
     x(i+1)= g(x(i));
      
     % print the approximate value in each iteration
     fprintf(' x(%d)= %f\n',i+1, x(i+1));
    
     err= x(i+1)-x(i);
     
   if(abs(err)<=tol)
     %ouput for the required tolerence
     fprintf('The  approximate root after %d iterations is%f',i+1, x(i+1));
     break;
   end
end

if(abs(err)>tol)
      %output when the given iterations are not sufficient
   fprintf('Insufficient no. of iterations');
end

% ------------------------------------------------------------------------------ 
% OUTPUT 1
% Fixed Point method to a find root of f(x)=0 when the initial guess is given
% Enter the function g(x): 1/(x^2+1)
% Enter the initial approximation/guess such that |g`(x)|<1 = 
%0.5
% Enter the maximum no. of iterations = 5
% Enter the tolerance = .1
%  x(1)= 0.500000
%  x(2)= 0.800000
%  x(3)= 0.609756
%  x(4)= 0.728968
%  x(5)= 0.653000
% The  approximate root after 5 iterations is 0.653000>>  
% ------------------------------------------------------------------------------
% OUTPUT 2
% Enter the function g(x): 1/(x^2+1)
% Enter the initial approximation/guess such that |g`(x)|<1 = 0.5
% Enter the maximum no. of iterations = 5
% Enter the tolerance = .01
%  x(1)= 0.500000
%  x(2)= 0.800000
%  x(3)= 0.609756
%  x(4)= 0.728968
%  x(5)= 0.653000
% Insufficient no. of iterations>> 
% ------------------------------------------------------------------------------
% OUTPUT 3
% Fixed Point method to a find root of f(x)=0 when the initial guess is given
% Enter the function g(x): 1/(x^2+1)
% Enter the initial approximation/guess such that |g`(x)|<1 = 0.5
% Enter the maximum no. of iterations = 20
% Enter the tolerance = .01
%  x(1)= 0.500000
%  x(2)= 0.800000
%  x(3)= 0.609756
%  x(4)= 0.728968
%  x(5)= 0.653000
%  x(6)= 0.701061
%  x(7)= 0.670472
%  x(8)= 0.689878
%  x(9)= 0.677538
%  x(10)= 0.685374
% The  approximate root after 10 iterations is 0.685374>> 
% 
% ------------------------------------------------------------------------------
% OUTPUT 3
% Fixed Point method to a find root of f(x)=0 when the initial guess is given
% Enter the function g(x): 1/(x^2+1)
% Enter the initial approximation/guess such that |g`(x)|<1 = 0.5
% Enter the maximum no. of iterations = 20
% Enter the tolerance = .00001
%  x(1)= 0.500000
%  x(2)= 0.800000
%  x(3)= 0.609756
%  x(4)= 0.728968
%  x(5)= 0.653000
%  x(6)= 0.701061
%  x(7)= 0.670472
%  x(8)= 0.689878
%  x(9)= 0.677538
%  x(10)= 0.685374
%  x(11)= 0.680394
%  x(12)= 0.683557
%  x(13)= 0.681547
%  x(14)= 0.682824
%  x(15)= 0.682013
%  x(16)= 0.682528
%  x(17)= 0.682201
%  x(18)= 0.682409
%  x(19)= 0.682276
%  x(20)= 0.682360
% Insufficient no. of iterations>> 