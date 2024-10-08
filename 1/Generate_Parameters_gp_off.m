%% Time

TA = 0.25e-3; % sample time [s]
TA_axes = 0.5e-3; % sample time axes [s]
% sample time of the GP
TA_gp = 5e-3;
% sample time of the Visualization
TA_vis = 10e-3;

T_switch = 3; % enable time [s]

fs = 1/TA; % sample rate [Hz]
fs_axes = 1/TA_axes; % sample rate axes [Hz]

TA_rand = 2;

dt = TA;

%% GP enable
enable_gp = 1;
set_gp_timevariant = 1;
set_gp_update_rate = 1; % Update rate unlimited
offline_training = 0;
offline_prediction = 1;

%% noise
noiseAmplitude = 0.00025;

%% PD Control

% new values without oscillation (smaller gains)
Kpx = 150000; % [N/m]
Kdx = 300; % [Ns/m]
Kpy = 80000; % [N/m]
Kdy = 200; % [Ns/m]

e_max = 0.001; % max position error for emergency stop [m]

%% True Admittance

Mx = 2; % [kg]
Dx = 10; % [Ns/m]
Kx = 0; % [N/m]

My = 2; % [kg]
Dy = 10; % [Ns/m]
Ky = 0; % [N/m]


%% Controller

% Nominal Admittance
Mx_nominal = 2; % [kg]
Dx_nominal = 10; % [Ns/m]
Kx_nominal = 0; % [N/m]

My_nominal = 2; % [kg]
Dy_nominal = 10; % [Ns/m]
Ky_nominal = 0; % [N/m]

% % low gain
% % PD Controller
Kpx_control = 1; % [N/m]
Kdx_control = 0.1; % [Ns/m]
Kpy_control = 1; % [N/m]
Kdy_control = 0.1; % [Ns/m]


%% Save Parameters
save('Axes_Parameters.mat')