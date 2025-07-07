# Pure Pursuit Path Tracking in Simulink
This repository contains a Simulink implementation of the Pure Pursuit algorithm for path tracking, integrated with a bicycle kinematic model of a vehicle moving at constant velocity.
The vehicle can follow a predefined set of waypoints using Pure Pursuit logic. The reference point of the vehicle is taken as the rear axle center, and steering is limited to ±30° (±0.5236 rad).

## Features
- Pure Pursuit control logic to track waypoints
- Simple bicycle kinematic vehicle model in Simulink
- Adjustable Look Ahead Distance (Ld) parameter

## Simulation Setup
* Wheelbase (L): 2.2 m
* Velocity (v): 1.0 m/s
* Look Ahead Distance (Ld): Tested with 1, 5, and 10 meters
* Solver: Fixed-step with 0.05 s step size
* Waypoint Path: From (0, 0) to (70, 30), given in params.m

## How to Run
* Load parameters and waypoints using params.m
* Open the Simulink model and run bicycle_model.slx
* To visualize the results, run the plotting script run_model_for_ld5.m

## Output Visualization
The 'changing_ld.m' allows path plots for different Ld values:

* Ld = 1 → More reactive, may cause oscillations
* Ld = 5 → Balanced tracking (default)
* Ld = 10 → Smoother path but larger turning radius

## Compatibility
Developed for MATLAB R2021a
