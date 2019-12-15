%
% BASIC MATH OPERATIONS
%
disp("\n")
disp("Basic math operations in Octave")
disp(sprintf("5 + 6 = %d", 5 + 6))
disp(sprintf("3 - 1 = %d", 3 - 1))
disp(sprintf("5 * 8 = %d", 5 * 8))
disp(sprintf("1 / 2 = %d", 1 / 2))
disp(sprintf("2 ^ 6 = %d", 2 ^ 6))
disp(sprintf("SQRT 64 = %d", sqrt(64)))
disp("\n")
disp("Press enter to continue")
disp("\n")
pause

%
% LOGICAL OPERATIONS
%
disp("Logical math operations in Octave")
disp(sprintf("1 == 2 = %d (false)", 1 == 2))
disp(sprintf("1 ~= 2 = %d (true)", 1 ~= 2))
disp(sprintf("1 && 0 = %d (false)", 1 && 0))
disp(sprintf("1 || 0 = %d (true)", 1 || 0))
disp(sprintf("xor(1, 0) = %d (true)", xor(1, 0)))
disp("\n")
disp("Press enter to continue")
disp("\n")
pause

%
% STRINGS
%
disp("Strings in Octave")
'string' % Both single and double quotes works the same
"string" % It is recommended to use double quotes as single quote is used in other
         % purposes as well
STR = ["Con" "cat " "this"]
disp("\n")
disp("Press enter to continue")
disp("\n")
pause

%
% VARIABLES
%
disp("Variables in Octave")
a = 3
b = 1; % Semicolon supresses the output i.e. result is not printed out
c = "string";
c
d = 3>1 % Logical expression, assigns d to 1 i.e. true
disp("\n")
disp("Press enter to continue")
disp("\n")
pause

%
% PRINTING
%
disp("Printing in Octave")
a = pi;
a
disp("a") % disp() works only with strings and is unable to print value of variables
sprintf('2 decimals: %0.2f', a)
disp(sprintf('2 decimals: %0.2f', a)) % Old C-style printing
disp("\n")
disp("Press enter to continue")
disp("\n")
pause

%
% FORMATTING OUTPUT
%
disp("Formatting output in Octave")
a
format long
a
format short
a
disp("\n")
disp("Press enter to continue")
disp("\n")
pause

%
% MATRICES AND VECTORS
%
disp("Matrices and vectoris in Orave")

A = [1 2;3 4;5 6] % 3 by 2 matrix A
% A =
% 1  2
% 3  4
% 5  6

% The following works the same
A = [1 2;
     3 4;
     5 6]

v = [1 2 3] % Row vector, or 1 by 3 matrix
% v =
% 1  2  3

v = [1;2;3] % Column vector, or 3 by 1 matrix
% v =
% 1
% 2
% 3

v = 1:0.2:2 % Create a vector v with values from 1 to 2 in 0.2 increments
% v =
% 1.0000  1.2000  1.4000  1.6000  1.8000  2.0000

v = 1:6 % Create a vector v with values 1 to 6
% v =
% 1  2  3  4  5  6

A = ones(2,3) % Create a 2 by 3 matrix populated with 1
% A =
% 1  1  1
% 1  1  1

A = 2*ones(2,3) % Create a 2 by 3 matrix populated with 2
% A =
% 2  2  2
% 2  2  2

% The following works the same
A = [2 2 2;2 2 2]

w = ones(1,3) % Creates a row vector w populated with 1
% w =
% 1  1  1

w = zeros(1, 3) % The same as above but 0 as values
% w =
% 0  0  0

w = rand(1, 3) % Creates a row vector w populated with random values using
               % uniform distribution with value between 0 and 1

A = rand(3, 3) % Creates a 3 by 3 matrix A populated with random values

w= randn(1, 3) % Crates a row vector w populated with random values using
               % normal (Gaussian) distribution theoritically in between
               % -infinite and infinite having 0 mean and 1 variance

w = -6 + sqrt(10) * (randn(1, 10000)); % Create vector with 10000 elements
hist(w) % Plots histogram of w
hist(w, 50) % Plots the same but with 50 bins

eye(4) % Eye is pun for identity, creates a 4 by 4 identity matrix
% ans =
%
% Diagonal Matrix
%
% 1  0  0  0
% 0  1  0  0
% 0  0  1  0
% 0  0  0  1

