function parametersPWabp = getParametersPWACp()
%GETPARAMETERSPWACP provides parameters for the
% piecewise affine function approximation of the 
% IEA 3.4-MW land-based wind turbine's power coefficient
% curve. The approximation is described in
% Sterle et al. 2023 Model Predictive Control of Wind 
% Turbines with Piecewise-Affine Power Coefficient
%
% If for any point p = [lambda theta]^T,
% AMin{j}*p+bMin{j} <= p <= AMax{j}*p+bMax{j}
% then it follows that 
% hat Cp = hat Cpj = ab{j}*p+c{j}

% Init
ab = cell(1,9);
c = cell(1,9);
AMax = cell(1,9);
AMin = cell(1,9);
bMin = cell(1,9);
bMax = cell(1,9);

% 1
ab{1}   = [0.0179   -0.0054];
c{1}   =  0.0041;
AMax{1} = [1 0.0000
           0      1];
AMin{1} = [1 0.0000
           0      1];
bMin{1} = [0.0000 
           0.0000]; 
bMax{1} = [2.0000
           7.8950];

% 2
ab{2}   = [0.0656   -0.0054];
c{2}   = -0.0914;
AMax{2} = [1 0.1429
           0       1];
AMin{2} = [1 0.0000
           0      1];
bMin{2} = [2.0000
           0.0000]; 
bMax{2} = [8.3912
           7.8950];

% 3
ab{3} = [-0.0326  -0.0194];
c{3} =  0.7327;
AMax{3} = [1 0.0000
           0      1];
AMin{3} = [1 0.1429
           0      1];
bMin{3} = [8.3912
           0.0000];  
bMax{3} = [30.0000
            7.8950];

% 4
ab{4}   = [0.0179   0.0043];
c{4}   = -0.0720;
AMax{4} = [1 0.0000
           0      1];
AMin{4} = [1 0.0000
           0      1];
bMin{4} = [0.0000     
           7.8950];
bMax{4} = [ 2.0000
           17.1100];

% 5
ab{5}   = [0.0656   0.0043];
c{5}   = -0.1674;
AMax{5} = [1 0.3998
           0       1];
AMin{5} = [1 0.0000
           0      1];
bMin{5} = [2.0000
           7.8950];
bMax{5} = [10.4194
           17.1100];

% 6
ab{6} = [-0.0326   -0.0350];
c{6} = 0.8558;
AMax{6} = [1 0.0000
           0      1];
AMin{6} = [1 0.3998
           0      1];
bMin{6} = [10.4194
            7.8950];
bMax{6} = [30.0000
           17.1100];

% 7
ab{7}   = [0.0179   0.0006];
c{7}   = -0.0090;
AMax{7} = [1 0.0000
           0      1];
AMin{7} = [1 0.0000
           0      1];
bMin{7} = [ 0.0000     
           17.1100];
bMax{7} = [ 2.0000
           26.3200];

% 8
ab{8}   = [0.0656   0.0006];
c{8}   = -0.1044;
AMax{8} = [1 0.1143
           0       1];
AMin{8} = [1 0.0000
           0      1];
bMin{8} = [ 2.0000
           17.1100];
bMax{8} = [ 5.5347
           26.3200];

% 9
ab{9} = [-0.0326   -0.0106];
c{9} = 0.4392;
AMax{9} = [1 0.0000
           0      1];
AMin{9} = [1 0.1143
           0      1];
bMin{9} = [ 5.5347
           17.1100];
bMax{9} = [30.0000
           26.3200];

% Parameters
parametersPWabp.ab = ab;
parametersPWabp.c = c;
parametersPWabp.AMax = AMax;
parametersPWabp.AMin = AMin;
parametersPWabp.bMin = bMin;
parametersPWabp.bMax = bMax;

end
