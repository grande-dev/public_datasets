%% This script opens the resulting .csv from OpenMAUVe and extracts the variable of most relevant interest. 
%
% author: Davide Grande
% date: 25/11/2024
%


data = readtable(TestAUV_5d_CEGIS_LMI_monopile_res.csv);

time = data.time;

u = data.generic_AUV_3d_out_lin_vel_u; % state x1
v = data.generic_AUV_3d_out_lin_vel_v; % state x2
w = data.generic_AUV_3d_out_lin_vel_w;

p = data.generic_AUV_3d_out_ang_vel_p;
q = data.generic_AUV_3d_out_ang_vel_q;
r = data.generic_AUV_3d_out_ang_vel_r; % state x3

pos_x = data.generic_AUV_3d_out_pos_x;
pos_y = data.generic_AUV_3d_out_pos_y;
pos_z = data.generic_AUV_3d_out_pos_z;

phi = data.generic_AUV_3d_out_angles_DCM_1_;
theta = data.generic_AUV_3d_out_angles_DCM_2_;
psi = data.generic_AUV_3d_out_angles_DCM_3_; % state x4

u1 = data.generic_AUV_3d_F1;
u2 = data.generic_AUV_3d_F2;
u3 = data.generic_AUV_3d_F3;
u4 = data.generic_AUV_3d_F4;

% actuator efficiency -- just for extra check
h1 = data.faultInjection_4thrusters_h_1;
h2 = data.faultInjection_4thrusters_h_2;
h3 = data.faultInjection_4thrusters_h_3;
h4 = data.faultInjection_4thrusters_h_4;
