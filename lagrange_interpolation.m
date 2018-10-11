%Lagrange's interpolation
%clear all
% Interpolating data by Lagrange's method
%input 


function yp  = LAGRANGE_S(n, x, y, xp)
%main program
    L = zeros(n);
    for i =1:n
        L(i)=1; 
        for j =1:n
            if (i~=j)
               L(i)= L(i)*(xp-x(j))/(x(i)-x(j));
            end
        end
    end
    yp=y*L';
    %ouput 
    %fprintf('the required value of y at xp is %f',yp)

    % Note: To see the data with multipliers use the follwoing 2 liines
    %fprintf('x    y    L   y.*L\n') 
    table = [x;y;L; y.*L]'; 

%---------------------------------------------------------------------
% OUTPUT 1
% enter the no. of data points = 5
% enter the x values as a row matrix [1 2 3 4 5]
% enter the y values as a row matrix [2 4 10 15 20]
% enter the x value for which y is to be evaluated = 1.5
% the required value of y at xp is 1.953125>> 

%---------------------------------------------------------------------
% OUTPUT 1
% enter the no. of data points = 5
% enter the x values as a row matrix [1 2 3 4 5]
% enter the y values as a row matrix [2 4 10 15 20]
% enter the x value for which y is to be evaluated = 3.5
% the required value of y at xp is 12.703125>> 