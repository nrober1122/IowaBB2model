%% Initialize variables
tgt_speed = 0;
tgt_depth = 0;
tgt_pitch = 0;
tgt_sway = 0;
tgt_yaw = 0;
dX_imposed   =  0; %Imposed control surface deflection in degs.
check_angle  =  0; %Checking angle for VZZ and HZZ in degs.





%% Define maneuvers
if ctrl_mode == 1
    tgt_speed = -5.1444;
    tgt_depth = -100;
    tgt_pitch = 0;
    dX_imposed   =  20; %Imposed control surface deflection in degs.
    check_angle  =  20; %Checking angle for VZZ and HZZ in degs.
    % Initial Conditions
    Bx_0 = [0 0 tgt_depth 0 0 0];    %initial displcement
    Bv_0 = [tgt_speed 0 0 0 0 0];      %initial velocity
    Ba_0 = [0 0 0 0 0 0];       %iniial acceleration
    % Comment other blocks
%     set_param('Model_6DOF/Controller/HZZ','commented','off');
%     set_param('Model_6DOF/Controller/SP','commented','on');
%     set_param('Model_6DOF/Controller/TC','commented','on');
%     set_param('Model_6DOF/Controller/VZZ','commented','on');
%     set_param('Model_6DOF/Controller/PF+L1','commented','on');
%     set_param('Model_6DOF/Controller/customize','commented','on');
end

if ctrl_mode == 2
    tgt_speed = -5.1444;
    tgt_depth = -15.3724;
    tgt_sway = 0;
    tgt_yaw = 0;
    tgt_pitch = 0;
    % Initial Conditions
    Bx_0 = [0 0 tgt_depth 0 0 0];    %initial displcement
    Bv_0 = [tgt_speed 0 0 0 0 0];      %initial velocity
    Ba_0 = [0 0 0 0 0 0];       %iniial acceleration
    Seastate = 5;        %Sea state value between 0 and 6
    % Comment other blocks
%     set_param('Model_6DOF/Controller/HZZ','commented','on');
%     set_param('Model_6DOF/Controller/SP','commented','off');
%     set_param('Model_6DOF/Controller/TC','commented','on');
%     set_param('Model_6DOF/Controller/VZZ','commented','on');
%     set_param('Model_6DOF/Controller/PF+L1','commented','on');
%     set_param('Model_6DOF/Controller/customize','commented','on');
end

if ctrl_mode == 3
    tgt_speed = -5.1444;
    tgt_depth = -35.0624;
    dX_imposed   =  20; %Imposed control surface deflection in degs.
    % Initial Conditions
    Bx_0 = [0 0 tgt_depth 0 0 0];    %initial displcement
    Bv_0 = [tgt_speed 0 0 0 0 0];      %initial velocity
    Ba_0 = [0 0 0 0 0 0];       %iniial acceleration
    % Comment other blocks
%     set_param('Model_6DOF/Controller/HZZ','commented','on');
%     set_param('Model_6DOF/Controller/SP','commented','on');
%     set_param('Model_6DOF/Controller/TC','commented','off');
%     set_param('Model_6DOF/Controller/VZZ','commented','on');
%     set_param('Model_6DOF/Controller/PF+L1','commented','on');
%     set_param('Model_6DOF/Controller/customize','commented','on');    
end

if ctrl_mode == 4
    tgt_speed = -4.72;
    tgt_depth = -100;
    tgt_sway = 0;
    dX_imposed   =  10; %Imposed control surface deflection in degs.
    check_angle  =  10; %Checking angle for VZZ and HZZ in degs.
    % Initial Conditions
    Bx_0 = [0 0 tgt_depth 0 0 0];    %initial displcement
    Bv_0 = [tgt_speed 0 0 0 0 0];      %initial velocity
    Ba_0 = [0 0 0 0 0 0];       %iniial acceleration
    % Comment other blocks
%     set_param('Model_6DOF/Controller/HZZ','commented','on');
%     set_param('Model_6DOF/Controller/SP','commented','on');
%     set_param('Model_6DOF/Controller/TC','commented','on');
%     set_param('Model_6DOF/Controller/VZZ','commented','off');
%     set_param('Model_6DOF/Controller/PF+L1','commented','on');
%     set_param('Model_6DOF/Controller/customize','commented','on');
end

if ctrl_mode == 5
    adap = 1;
    tgt_speed = -5;
    tgt_depth = -50;
    Bx_0 = [0 0 tgt_depth 0 0 0];    %initial displcement
    Bv_0 = [tgt_speed 0 0 0 0 0];      %initial velocity
    Ba_0 = [0 0 0 0 0 0];       %iniial acceleration
    
    Cpx=xlsread('TC_depth_change.xlsx','A2:A20'); Cpy=xlsread('TC_depth_change.xlsx','B2:B20'); Cpz=xlsread('TC_depth_change.xlsx','C2:C20');
    Cp = [Cpx' ; Cpy' ; Cpz'];
    [~,N] = size(Cp); N = N-1;
    
    Tf = 5000;
    [tnodes,~,Dm] = BeBOT(N,Tf);
    Cp_prime = Cp*Dm;
    
    
    
    % Comment other blocks
%     set_param('Model_6DOF/Controller/HZZ','commented','on');
%     set_param('Model_6DOF/Controller/SP','commented','on');
%     set_param('Model_6DOF/Controller/TC','commented','on');
%     set_param('Model_6DOF/Controller/VZZ','commented','on');
%     set_param('Model_6DOF/Controller/PF+L1','commented','off');
%     set_param('Model_6DOF/Controller/customize','commented','on');
end

if ctrl_mode == 6
    % Comment other blocks
%     set_param('Model_6DOF/Controller/HZZ','commented','on');
%     set_param('Model_6DOF/Controller/SP','commented','on');
%     set_param('Model_6DOF/Controller/TC','commented','on');
%     set_param('Model_6DOF/Controller/VZZ','commented','on');
%     set_param('Model_6DOF/Controller/PF+L1','commented','on');
%     set_param('Model_6DOF/Controller/customize','commented','off');
end