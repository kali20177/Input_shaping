%����simulink�ļ�ǰ�������д˲�����ʼ������

clear;clc;close all;
ts = 0.01;
wn = 5;
zeta = 0.1;
td = pi / (wn * sqrt(1 - zeta^2));
K = exp((-zeta * pi) / (sqrt(1 - zeta^2)));
%��һ����ֵA1 �ڶ���A2
A1 = 1 / (1 + K);
A2 = K / (1 + K);