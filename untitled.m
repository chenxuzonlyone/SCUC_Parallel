clear
clc
M_1 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test1copy');
M_2 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test2copy');
M_3 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test3copy');
M_4 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test4copy');
M_5 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test5copy');
M_6 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test6copy');
M_7 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test7copy');
M_8 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test8copy');


N_1 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test1');
N_2 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test2');
N_3 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test3');
N_4 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test4');
N_5 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test5');
N_6 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test6');
N_7 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test7');
N_8 = importdata('/Users/zhangcaihua/Desktop/SCUC_Parallel/Parallel_C_Codes/Build/Products/Debug/test8');

X_1 = M_1 - N_1;
max_1 = max(max(X_1))
X_2 = M_2 - N_2;
max_2 = max(max(X_2))
X_3 = M_3 - N_3;
max_3 = max(max(X_3))
X_4 = M_4 - N_4;
max_4 = max(max(X_4))
X_5 = M_5 - N_5;
max_5 = max(max(X_5))
X_6 = M_6 - N_6;
max_6 = max(max(X_6))
X_7 = M_7 - N_7;
max_7 = max(max(X_7))
X_8 = M_8 - N_8;
max_8 = max(max(X_8))