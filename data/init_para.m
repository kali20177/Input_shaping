clc; 

V=0.005;
% 从图上读上升时间和超调量计算zeta 和 wn
% Mp = 0.7323;
% tp = 2.07e-03;
% zeta = log(1/Mp) / sqrt(pi^2 + (log(1/Mp))^2);
% w_n = pi / (tp * sqrt(1 - zeta^2));
% p1 = 2*zeta*w_n;
% p2 = w_n^2;

w_n = 1.1796e+03;

zeta = 0.1482;

f = w_n / (2*pi);

td = pi / (w_n * sqrt(1 - zeta^2));

K = exp((-zeta * pi) / (sqrt(1 - zeta^2)));

w_n3o = 1.2694e+03;

zeta3o = 0.1;

f3o = w_n3o / (2*pi);

td3o = pi / (w_n3o * sqrt(1 - zeta3o^2));

K3o = exp((-zeta3o * pi) / (sqrt(1 - zeta3o^2)));


% ZV
%第一个幅值A1 第二个A2

A1 = 1 / (1 + K);
A2 = K / (1 + K);

A13o = 1 / (1 + K3o);
A23o = K3o / (1 + K3o);

% ZVD
A11 = 1 / (1+2*K+K^2);
A22 = 2 * K / (1+2*K+K^2);
A33 = K^2 / (1+2*K+K^2);


A113o = 1 / (1+2*K3o+K3o^2);
A223o = 2 * K3o / (1+2*K3o+K3o^2);
A333o = K3o^2 / (1+2*K3o+K3o^2);

% 4o ZVD
A1111 = 1 / (1+3*K+3*K^2+K^3);
A2222 = 3 * K / (1+3*K+3*K^2+K^3);
A3333 = 3 * K^2 / (1+3*K+3*K^2+K^3);
A4444 = K^3 / (1+3*K+3*K^2+K^3);

% EI
A111 = (1+V)/4;
A222 = (1-V)/2;
A333 = (1+V)/4;
t2 = pi / w_n;

