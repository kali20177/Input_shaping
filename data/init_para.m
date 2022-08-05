clc; 

V=0.005;

Mp = 0.7561;

tp = 1.8e-03;

zeta = log(1/Mp) / sqrt(pi^2 + (log(1/Mp))^2);

w_n = pi / (tp * sqrt(1 - zeta^2));

f = w_n / (2*pi);

td = pi / (w_n * sqrt(1 - zeta^2));

K = exp((-zeta * pi) / (sqrt(1 - zeta^2)));

p1 = 2*zeta*w_n
p2 = w_n^2

% ZV
%第一个幅值A1 第二个A2

A1 = 1 / (1 + K);
A2 = K / (1 + K);

% ZVD
td1 = td;
td2 = 2 * td;

A11 = 1 / (1+2*K+K^2);
A22 = 2 * K / (1+2*K+K^2);
A33 = K^2 / (1+2*K+K^2);

% EI
A111 = (1+V)/4;
A222 = (1-V)/2;
A333 = (1+V)/4;
t2 = pi / w_n;

