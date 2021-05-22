r1 = [-294.32, 4265.1, 5986.7];
r2 = [-1365.5, 3637.6, 6346.8];
r3 = [-2940.3, 2473.7, 6555.8];


% Mod r
mod_r1 = sqrt(dot(r1, r1));
fprintf('|r1| = %f\n', mod_r1);
mod_r2 = sqrt(dot(r2, r2));
fprintf('|r2| = %f\n', mod_r2);
mod_r3 = sqrt(dot(r3, r3));
fprintf('|r3| = %f\n', mod_r3);


% 'C' values
C12 = cross(r1, r2);
fprintf('C12 =');
fprintf('%f ', C12);
fprintf('\n');
C23 = cross(r2, r3);
fprintf('C23 =');
fprintf('%f ', C23);
fprintf('\n');
C31 = cross(r3, r1);
fprintf('C31 =');
fprintf('%f ', C31);
fprintf('\n');

% Varification of (Ur1 and C23)
bar_C23 = C23/(sqrt(dot(C23, C23)));
bar_r1 = r1/mod_r1;


% Ahead
N = mod_r1*C23+mod_r2*C31+mod_r3*C12;
fprintf('N: ');
fprintf('%f ', N);
fprintf('\n');
mod_N = sqrt(dot(N, N));
fprintf('|N|: %f\n',mod_N);

D = C12+ C23+ C31;
fprintf('D: ');
fprintf('%f ', D);
fprintf('\n');
mod_D = sqrt(dot(D, D));
fprintf('|D|: %f\n',mod_D);
S = r1*(mod_r2-mod_r3)+ r2*(mod_r3-mod_r1)+ r3*(mod_r1-mod_r2);
fprintf('S: ');
fprintf('%f ', S);
fprintf('\n');

muu = sqrt(398600/(mod_D*mod_N));
v1 = muu*(cross(D, r1)/mod_r1+S);
fprintf('v1: ');
fprintf('%f ', v1);
fprintf('\n');
v2 = muu*(cross(D, r2)/mod_r2+S);
fprintf('v2: ');
fprintf('%f ', v2);
fprintf('\n');
v3 = muu*(cross(D, r3)/mod_r3+S);
fprintf('v3: ');
fprintf('%f ', v3);
fprintf('\n');