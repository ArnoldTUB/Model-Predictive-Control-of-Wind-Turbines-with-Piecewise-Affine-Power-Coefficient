# Model-Predictive-Control-of-Wind-Turbines-with-Piecewise-Affine-Power-Coefficient

getParametersPWACp provides parameters for the
piecewise affine function approximation of the 
IEA 3.4-MW land-based wind turbine's power coefficient
curve. The approximation is described in
Sterle et al. 2023 Model Predictive Control of Wind 
Turbines with Piecewise-Affine Power Coefficient

If for any point `p = [lambda theta]^T`,
`AMin{j}*p+bMin{j} <= p <= AMax{j}*p+bMax{j}`
then it follows that 
`hat Cp = hat Cpj = ab{j}*p+c{j}`
