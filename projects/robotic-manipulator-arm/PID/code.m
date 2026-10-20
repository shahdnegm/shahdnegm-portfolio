%% DC Motor Modelling – 1st Homework of EMD
% Shahd Ayman Negm – 10th of April
% Modeling of Maxon DCX Series 22 S Type Motor

clc;
syms S

%% Motor Parameters
V_an = 12;                  % V – Nominal voltage
I_anl = 71.7e-3;            % A – No-load current
R_a = 1.02;                 % Ohm – Armature resistance
L_a = 0.058e-3;             % H – Armature inductance
kfi = 9.18e-3;              % Vs/rad – Torque constant
Jm = 5.05e-7;              % kg·m² – Rotor inertia
ref_rpm= 10700;

%% Calculated Parameter: Viscous Friction Coefficient
B_m = (kfi^2 * I_anl) / (V_an - R_a * I_anl)  % N·m·s

%% External Load Conditions (not used in transfer functions directly)
T_nl = 0;                   % Nm – No load torque
T_n = 14.6e-3;              % Nm – Nominal load torque
T_s = 10.8e-2;              % Nm – Stall torque

%% Transfer Function – Angular Velocity (Omega)
num1 = [kfi*V_an]; % Numerator for Omega(s)
den = [Jm*L_a  B_m*L_a + Jm*R_a  kfi^2+B_m*R_a]; % Common denominator
num11 = [kfi]; % Numerator for Omega(s)/u(s)
Omega = tf(num11, den)     % Angular velocity transfer function

%% Transfer Function – Armature Current
num2 = [Jm*V_an  B_m*V_an]; % Numerator for Current(s)
Current = tf(num2, den)         % Current transfer function
num22 = [Jm  B_m ]; % Numerator for Current(s)/u(s)
%% Partial Fraction Expansion – Angular Velocity
[r_omega, p_omega, k_omega] = residue(num1, den)

disp('Partial Fraction Expansion for Omega(s):');
for i = 1:length(r_omega)
    fprintf('Term %d: %.4f / (s - (%.4e))\n', i, r_omega(i), -p_omega(i));
end

%% Partial Fraction Expansion – Current
[r_i, p_i, k_i] = residue(num2, den)

disp('Partial Fraction Expansion for I(s):');
for i = 1:length(r_i)
    fprintf('Term %d: %.4f / (s - (%.4e))\n', i, r_i(i), -p_i(i));
end


% Manually computed time constants (from datasheet)
tau_e = L_a / R_a  % Electrical time constant
tau_m = (Jm * R_a) / (kfi^2)  % Mechanical time constant
tau_total= tau_m + tau_e

p1 = (1 / kfi) * (tau_total / 2)
Ti = 5*tau_total;
Td = tau_total / 10;

fprintf('\nElectrical Time Constant (tau_e): %.4e s\n', tau_e);
fprintf('Mechanical Time Constant (tau_m): %.4e s\n', tau_m);

%% position PID
tc = 5*tau_m
kp = (tau_m+tau_e)/(tc+ tau_e)
ki = 1/tc
kd = (tau_e* tau_m)/(tau_m+tau_e)