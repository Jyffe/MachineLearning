A = [1 2;
     3 4;
     5 6];
B = [11 12;
     13 14;
     15 16];
C = [1 1;
     2 2]

A * C % Multiplies matrices together
% |1 2|   |1 1|   |1*1+2*2 1*1+2*2|   | 5  5|
% |3 4| * |2 2| = |3*1+4*2 3*1+4*2| = |11 11|
% |5 6|           |5*1+6*2 5*1+6*2|   |17 17|

A .* B % Element vice multiplation, denoted by .
% |1 2|   |11 12|   |11 24|
% |3 4| * |13 14| = |39 56|
% |5 6|   |15 16|   |75 96|

A .^ 2 % Element vice squaring
% | 1  4|
% | 9 16|
% |25 36|

v = [1;2;3];
1 ./ v % Element vice reciprocal
% 1.00000
% 0.50000
% 0.33333

1 ./ A

log(v) % Element vice logarithm
% 0.00000
% 0.69315
% 1.09861

exp(v) % Element vice exponential
%  2.7183
%  7.3891
% 20.0855

abs([-1;2;-3]) % Element vice absolute value
% 1
% 2
% 3

-v
% -1
% -2
% -3

% Add 1 to all elements of vector v
v + ones(length(v),1) % Generates length(v) by 1 vector and adds it with vector 1
% or just...
v + 1

A' % Transpose matrix A
% |1 2|           |1 3 5|
% |3 4| transpose |2 4 6|
% |5 6]

a = [1 15 2 0.5]
max(a) % Returns largest element value of vector a

[val, ind] = max(a) % Returns largest element value of vector a and its index

a < 3 % Element wise comparison returning true(1) or false(0) for each element
% 1 0 1 1

find(a < 3) % Return indexes of elements where comparison is true
% 1 3 4

A = magic(3) % Returns 3 by 3 magic square
% 8 1 6
% 3 5 7
% 4 9 2

[r, c] = find(A >= 7) % Returns rows and columns of elements where comparison is true
% r =
%    1
%    3
%    2
%
% c =
%    1
%    2
%    3

sum(a) % Sums up all elements of a
% 18.500

prod(a) % Returns prodcut of all elements of a i.e. multiplies all the elements
% 15

floor(a) % Rounds down all elements of a
% 1 15 2 0

ceil(a) % Roudns up all elements of a
% 1 15 2 1

rand(3) % Generates random 3 by 3 matrix

max(rand(3), rand(3)) % Generates 3 by 3 matrix by selecting larger of two random elements

max(A, [], 1) % Column wise maximum, 1 means first dimension i.e. columns
              % Max defaults to column, so max(A) is the same thing...
% 8 1 6    
% 3 5 7 -> 8 9 7
% 4 9 2

max(A, [], 2) % Row wise maximu, 2 means second dimension i.e. rows
% 8 1 6    8
% 3 5 7 -> 7
% 4 9 2    9

% Finding the largest element value of matrix A
max(max(A)) % max(8 9 7) -> 9, or
max(A(:)) % Turn the matrix to vector first

A = magic(9)

% Row wise sum equals to 369
sum(A, 1) % Per column sum (1st dimension)

% Column wise sum equals to 369
sum(A, 2) % Per row sum (2nd dimension)

% Top left to bottom right diagonal sum equals to 369
eye(9) % Create a 9 by 9 identity matrix
A .* eye(9) % Clear other cells by doing cell wise multiplying
sum(A .* eye(9)) % Per column sum return 1 by 9 matrix
sum(sum(A .* eye(9))) % Sum elements of the 1 by 9 matrix

% Same as above but with the other diagonal
flipud(eye(9)) % Flip up down
sum(sum(A .* flipud(eye(9))))

A = magic(3)
pinv(A) % Inverts cells of the matrix
temp = pinv(A)
temp * A 
