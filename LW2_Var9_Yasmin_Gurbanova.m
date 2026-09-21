%% LABWORK

%% 1. Vectors

a = (pi/2:0.5:3*pi)';
b = a.^2;
c = sin(a + b);

disp('Task 1:')
disp(c.')





%% 2. Matrices

Z = rand(3,3);

disp('Task 2a - Matrix Z:')
disp(Z)

Z(2,:) = [];

disp('Task 2b - Matrix Z after removing the second row:')
disp(Z)

Z = Z.';

disp('Task 2c - Transposed matrix:')
disp(Z)



%% 3. Practical applications

A = 6;
f = 4;
sigma = 1.2;
U1 = 3.5;
U2 = 2.5;

t = 0:0.001:1.5;

s = A .* sin(2*pi*f*t) + 0.5*A .* cos(4*pi*f*t);
n = sigma .* randn(size(t));

x = s + n;


%% 3a. Select signal samples exceeding U1

selected = x(x > U1);

disp('Task 3a - Signal samples exceeding U1:')
disp(selected)


%% 3b. Filter the signal

filtered = x;
filtered(abs(filtered) < U2) = 0;

disp('Task 3b - Filtered signal:')
disp(filtered)


%% 3c. Determine the number of samples

numberOfSamples = sum(ones(size(x)));
numberOfSelectedSamples = sum(x > U1);

disp('Task 3c - Number of samples in the unfiltered signal:')
disp(numberOfSamples)

disp('Task 3c - Number of selected samples:')
disp(numberOfSelectedSamples)


%% 3e. Determine minimum and maximum voltage values

minimumVoltage = min(filtered);
maximumVoltage = max(filtered);

disp('Task 3e - Minimum voltage:')
disp(minimumVoltage)

disp('Task 3e - Maximum voltage:')
disp(maximumVoltage)



%% Extra Task

A = input('Enter vector A: ');

B = A(1,10:-1:1);

B = [B A(1,end:-1:12)];

B = [B A(1,11)];

disp('generated vector B:')
disp(B)