clear
clc
% M_Modified_1 = csvread('/Users/zhangcaihua/Desktop/Parallel_Codes_Collaboration/Data_CSV_updated/GenCorrectiveDispatchLimitData.csv');
% M_Modified_2 = csvread('/Users/zhangcaihua/Desktop/Parallel_Codes_Collaboration/Data_CSV_updated/GenData.csv');
% M_Modified_3 = csvread('/Users/zhangcaihua/Desktop/Parallel_Codes_Collaboration/Data_CSV_updated/LineData.csv');
% M_Modified_4 = csvread('/Users/zhangcaihua/Desktop/Parallel_Codes_Collaboration/Data_CSV_updated/LoadFactor.csv');
% M_Modified_5 = csvread('/Users/zhangcaihua/Desktop/Parallel_Codes_Collaboration/Data_CSV_updated/LoadForecastData.csv');
% M_Modified_6 = csvread('/Users/zhangcaihua/Desktop/Parallel_Codes_Collaboration/Data_CSV_updated/ShiftFactorData.csv');
% M_Modified_7 = csvread('/Users/zhangcaihua/Desktop/Parallel_Codes_Collaboration/Data_CSV_updated/SRCostandMaxSustainedRateData.csv');
% M_Modified_8 = csvread('/Users/zhangcaihua/Desktop/Parallel_Codes_Collaboration/Data_CSV_updated/SRSystemRequirementData.csv');
% 
% N_Modified_1 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test1');
% N_Modified_2 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test2');
% N_Modified_3 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test3');
% N_Modified_4 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test4');
% N_Modified_5 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test5');
% N_Modified_6 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test6');
% N_Modified_7 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test7');
% N_Modified_8 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test8');
% % N_Modified_1 = xlsread('/Users/zhangcaihua/Desktop/Parallel_Codes_Collaboration/Data_CSV_updated/GenCorrectiveDispatchLimitData.csv');
% % N_Modified_2 = xlsread('/Users/zhangcaihua/Desktop/Parallel_Codes_Collaboration/Data_CSV_updated/GenData.csv');
% % N_Modified_3 = xlsread('/Users/zhangcaihua/Desktop/Parallel_Codes_Collaboration/Data_CSV_updated/LineData.csv');
% % N_Modified_4 = xlsread('/Users/zhangcaihua/Desktop/Parallel_Codes_Collaboration/Data_CSV_updated/LoadFactor.csv');
% % N_Modified_5 = xlsread('/Users/zhangcaihua/Desktop/Parallel_Codes_Collaboration/Data_CSV_updated/LoadForecastData.csv');
% % N_Modified_6 = xlsread('/Users/zhangcaihua/Desktop/Parallel_Codes_Collaboration/Data_CSV_updated/ShiftFactorData.csv');
% % N_Modified_7 = xlsread('/Users/zhangcaihua/Desktop/Parallel_Codes_Collaboration/Data_CSV_updated/SRCostandMaxSustainedRateData.csv');
% % N_Modified_8 = xlsread('/Users/zhangcaihua/Desktop/Parallel_Codes_Collaboration/Data_CSV_updated/SRSystemRequirementData.csv');
% 
% X_Modified_1 = M_Modified_1 - N_Modified_1;
% max_Modified_1 = max(max(X_Modified_1))
% X_Modified_2 = M_Modified_2 - N_Modified_2;
% max_Modified_2 = max(max(X_Modified_2))
% X_Modified_3 = M_Modified_3 - N_Modified_3;
% max_Modified_3 = max(max(X_Modified_3))
% X_Modified_4 = M_Modified_4 - N_Modified_4;
% max_Modified_4 = max(max(X_Modified_4))
% X_Modified_5 = M_Modified_5 - N_Modified_5;
% max_Modified_5 = max(max(X_Modified_5))
% X_Modified_6 = M_Modified_6 - N_Modified_6;
% max_Modified_6 = max(max(X_Modified_6))
% X_Modified_7 = M_Modified_7 - N_Modified_7;
% max_Modified_7 = max(max(X_Modified_7))
% X_Modified_8 = M_Modified_8 - N_Modified_8;
% max_Modified_8 = max(max(X_Modified_8))
% 
% max_ofthemax=max([max_Modified_1, max_Modified_2,max_Modified_3, max_Modified_4, max_Modified_5, max_Modified_6, max_Modified_7, max_Modified_8])
% 
% M_1 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test1copy');
% M_2 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test2copy');
% M_3 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test3copy');
% M_4 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test4copy');
% M_5 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test5copy');
% M_6 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test6copy');
% M_7 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test7copy');
% M_8 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test8copy');
% 
% 
% N_1 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test1');
% N_2 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test2');
% N_3 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test3');
% N_4 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test4');
% N_5 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test5');
% N_6 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test6');
% N_7 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test7');
% N_8 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test8');

% X_1 = M_1 - N_1;
% max_1 = max(max(X_1));
% X_2 = M_2 - N_2;
% max_2 = max(max(X_2));
% X_3 = M_3 - N_3;
% max_3 = max(max(X_3));
% X_4 = M_4 - N_4;
% max_4 = max(max(X_4));
% X_5 = M_5 - N_5;
% max_5 = max(max(X_5));
% X_6 = M_6 - N_6;
% max_6 = max(max(X_6));
% X_7 = M_7 - N_7;
% max_7 = max(max(X_7));
% X_8 = M_8 - N_8;
% max_8 = max(max(X_8));

M_1 = csvread('/Users/zhangcaihua/Desktop/Parallel_Codes_Collaboration/Data_CSV_updated/GenCorrectiveDispatchLimitData.csv');
N_1 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/GenCorrectiveData');
X_1 = M_1 - N_1;
max_1 = max(max(X_1));