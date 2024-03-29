% 3 by 2 matrix
A = [1 2;
     3 4
     5 6];

SZ = size(A) % Returns size of the matrix, which is actually 1 by 2 matrix itself
size(SZ)

size(A,1) % Returns size of the first dimension (i.e. rows = 3)
size(A,2) % Returns size of the second dimension (i.e. columns = 2)

v = [1 2 3 4];
length(v) % Returns lenght of the vector (4)
length(A) % For matrix the length() returns lenght of the longer dimension,
          % whether it is rows or columns

% Two ways, both do the same. Later is useful if file name is stored in variable. 
file="priceY.dat"
load featuresX.dat % Loads the data from the file as a matrix featureX
%load("priceY.dat") % Loads the data from the file as a vector priceY
load(file)

who % Shows all the variables in the Octave workspace
whos % Shows the same in more detail

B = [1 2 3;4 5 6];
clear B % Removes variable from the workspace
% clear without any arguments clears all variables from the workspace

v = priceY(1:10) % Creates a vector v with first 10 values from vector priceY

save v.mat v % Saves the vector to file v.mat

A(3,2) % Access cell of matrix by an index
% ans = 6

% : means every element long that row/columns
A(2,:) % Returns second row of A
% ans = 
%    3 4

A(:,2) % Returns second column of A
% ans = 
%    2
%    4
%    6

A([1 3],:) % Returns all columns (:) from rows 1 and 3 ([1 3]) of A
% and =
%    1  2
%    5  6

A(:,2) = [10;11;12] % Assigns column vector [10;11;12] as new values for 2nd 
                    % column of A
% A =
%     1  10
%     2  11
%     3  12

A = [A, [100;101;102]] % Appends column vector [100;101;102] as a third column
                       % for matrix A
% A =
%    1  10  100
%    2  11  101
%    3  12  102

v = A(:) % Put all the elements of matrix A into a single column vector v
% v =
%    1
%    2
%    3
%    10
%    11
%    12
%    100
%    101
%    102

A = [1 2; % 1 2 is the same as 1,2
     3,4
     5 6];

B = [11 12;
     13 14;
     15 16];

C = [A B] % Concatenates matrices A and B as matrix C by putting B right to A
% C =
%    1 2 11 12
%    3 4 13 14
%    5 6 15 16

C = [A;B] % Concatenates matrice A and B as matrix C by putting B below the A
% C =
%     1  2
%     3  4
%     5  6
%    11 12
%    13 14
%    15 16
