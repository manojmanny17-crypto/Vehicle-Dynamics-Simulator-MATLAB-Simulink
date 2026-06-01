# MATLAB/Simulink Vehicle Dynamics Simulator

A MATLAB/Simulink vehicle dynamics simulator developed incrementally from a basic longitudinal vehicle model to a telemetry-enabled lap time simulator.

## Step 1 – Basic Longitudinal Vehicle Model

Implemented Newton's second law to model vehicle acceleration under constant drive force. Vehicle speed and distance were obtained through numerical integration.

### Figures

* step1_speed_distance_response.png
* step1_model.png

### Results

* step1_results.txt

---

## Step 2 – Parameter Sensitivity Analysis

Performed sensitivity studies to investigate the influence of aerodynamic drag coefficient and vehicle mass on lap time performance.

### Figures

* step2_drag_sensitivity.png
* step2_mass_sensitivity.png

### Results

* drag_sensitivity_results.txt
* mass_sensitivity_results.txt

---

## Step 3 – Gearbox Modelling

Implemented a multi-stage gearbox using Simulink switching logic. Drive force changes with vehicle speed to emulate gear shifts and realistic acceleration behaviour.

---

## Step 4 – Advanced Vehicle Dynamics and Lap Time Simulation

Extended the model with road gradients, corner speed constraints, braking zones, telemetry monitoring and lap time estimation.

---

## Tools Used

* MATLAB
* Simulink

## Features

* Longitudinal vehicle dynamics
* Aerodynamic drag modelling
* Gearbox modelling
* Road gradient analysis
* Braking zones
* Corner speed estimation
* Telemetry dashboard
* Lap time simulation
