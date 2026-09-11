%% This script opens the resulting .csv from OpenMAUVe, selects the selected 
% data only and saves such data into a new .csv file.
% This allowed to reduce the dimension of the results from >10 GB to 41 MB.
%
% author: Davide Grande
% date: 05/11/2025
%

close all
clear all
clc 

data = readtable('NavigationSeawingDistubances_res_useful_data_only.csv');

time = data.time;

%% Attitude states
x1 = data.x1; % state x1 - linear velocity along the x-axis [m/s]
x2 = data.x2; % state x2 - linear velocity along the y-axis [m/s]
x3 = data.x3; % state x3 - linear velocity along the z-axis [m/s]

x4 = data.x4; % state x4 - angular velocity around the x-axis [rad/s]
x5 = data.x5; % state x5 - angular velocity around the y-axis [rad/s]
x6 = data.x6; % state x6 - angular velocity around the z-axis [rad/s]

pos_x = data.pos_x; % inertial position along the x-axis [m] (ECI frame)
pos_y = data.pos_y; % inertial position along the y-axis [m] (ECI frame)
pos_z = data.pos_z; % inertial position along the z-axis [m] (ECI frame)

% Euler Angles
phi = data.phi; % roll attitude [rad] 
theta = data.theta; % pitch attitude [rad] 
psi = data.psi; % yaw attitude [rad] 
theta_deg = data.theta_deg; % pitch attitude [deg] 
psi_deg = data.psi_deg; % yaw attitude [deg] 


%% Reference signals
ref_theta = data.ref_theta; % reference pitch attitude [deg] 
ref_psi = data.ref_psi; % reference yaw attitude [deg] 

%% Environmental disturbances
x_ECI_c = data.x_ECI_c; % currents disturbance along the x-axis [m] (ECI frame)
y_ECI_c = data.y_ECI_c; % currents disturbance along the y-axis [m] (ECI frame)
z_ECI_c = data.z_ECI_c; % currents disturbance along the z-axis [m] (ECI frame)

%% Inputs to actuators
u1 = data.u1; % control signal of the VBD, including dynamics 
u2 = data.u2; % control signal of the shifting mass, including dynamics 
u3 = data.u3; % control signal of the rolling mass, including dynamics 


