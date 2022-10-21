# Joubert BB2 Hydrodynamic Model Simulation

This is a MATLAB/Simulink model for the Joubert BB2 vehicle. The intention of this model is to provide a reduced-order approximation of the CFD model as a tool for research in control of highly nonlinear systems. Control algorithms developed with this model may be applied to the more costly CFD model near the end of the development phase.

# Main Components:

- Simulink Model (`Model_6DOF.slx`)
- Configuration File (`control_params.m`)
- If using the path-following controller: 3D path control point specification (`TC_{}.xlsx`)

There are several simulations set to run out of the box, which can be selected by setting the `control_mode` variable in the `run.m` file:

1. Horizontal Zig-Zag
2. ?
3. ?
4. Vertical Zig-Zag
5. Path-Following
6. Custom

Control modes 1-4 are primarily used for verification of the hydrodynamic properties, but can also be a useful baseline to check that everything runs properly. 

# Getting Started:

To run a simulation,
1. Open `run.m` and set the desired value for `control_mode` (ex. `control_mode=5`)
3. Execute the `run.m` file
4. Open `Model_6DOF.slx` and click the 'Run' button in the simulation pane

Position and velocity data should start appearing in the `Bx` and `Bv` scopes, respectively, in `Model_6DOF.slx`. These data streams show how the vehicle moves as the simulation progresses.
