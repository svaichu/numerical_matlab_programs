function [k] = springstiff(stiff)
%spring stiffness

k=[stiff -stiff;-stiff stiff];

end

