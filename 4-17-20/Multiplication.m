clc
clear all
matrix_size=10000;
max_number=10;
% create A and B matrix 
A = randi(max_number, matrix_size);
B = randi(max_number, matrix_size);

[rowsA, colsA] = size(A);
[rowsB, colsB] = size(B);
C = zeros(rowsA, colsB);
tic
for row = 1 : rowsA
  for col = 1 : colsB
    Sum_ = 0;
    for k = 1 : colsA
      Sum_ =Sum_ + A(row, k) * B(k, col);
    end
    C(row, col) =Sum_;
  end
end
disp('Time take of Series Code:')
toc

tic
 A = distributed(A);
 B = distributed(B);
 tic
 parallel= A * B;
 disp('Time take of parallel Code:') 
 toc

% build in function 
tic
D = A * B;
disp('Time take with * :')
toc


disp('Result of Series Code:')
C

disp('Result of * : ')
D

disp('Result of Parallel Code:')
 parallel
 
if(sum(sum(C-D))==0)
    disp('Result are same by Series and *')
end

if(sum(sum(D- parallel))==0)
    disp('Result are same by parallel and *')
end