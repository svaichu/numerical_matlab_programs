clear
clc
k1 = springstiff(200);
k2 = springstiff(300);
k3 = springstiff(400);
k4 = springstiff(100);
K = zeros(4);
K([1,3],[1,3]) = K([1,3],[1,3]) + k1;
K([1,2],[1,2]) = K([1,2],[1,2]) + k2;
K([2,3],[2,3]) = K([2,3],[2,3]) + k3;
K([3,4],[3,4]) = K([3,4],[3,4]) + k4;

kread = K([2,3],[2,3]);