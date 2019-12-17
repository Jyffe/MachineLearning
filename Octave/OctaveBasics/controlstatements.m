v = zeros(10, 1)

for i = 1:10;
  v(i) = 2^i;
end;

v

indices=1:10

for i = indices,
  disp(i);
end;

v
i = 1;

while i < 5,
  v(i) = 100;
  i = i + 1;
end;

v

i = 1;
while true,
  v(i) = 999;
  i = i + 1;
  if i == 6,
    break;
  end;
end;
v

v(1) = 2;
if v(1) == 1,
  disp("Value is one")
elseif v(1) == 2,
  disp("Value is two")
else
  disp("Value is not one or two")
end;

disp(sprintf("%d", squarethisnumber(10))) % Function call
[a, b] = squareandqubethisnumber(10) % Function returns two values, or rather one vector...

% addpath("~") % Octave search path

% Define function to compute cost of theta(0)
X = [1 1;1 2;1 3];
y = [1; 2; 3;];
theta = [0;1];
j = costFunctionJ(X, y, theta) % Perfect fit

theta = [0;0];
j = costFunctionJ(X, y, theta) % Not so perfect fit...
