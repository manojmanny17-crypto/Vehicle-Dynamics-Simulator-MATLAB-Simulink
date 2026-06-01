# MATLAB/Simulink Vehicle Dynamics Simulator

A MATLAB/Simulink vehicle dynamics simulator developed through a progressive modelling approach, starting from a basic longitudinal dynamics model and evolving into a telemetry-enabled lap time simulator. The project investigates vehicle performance, aerodynamic effects, track characteristics, gearbox behaviour and braking strategies using MATLAB and Simulink.

## Project Development

### Step 1 – Basic Longitudinal Vehicle Dynamics

Developed a fundamental vehicle dynamics model based on Newton's Second Law. Vehicle acceleration, speed and distance were obtained through numerical integration in Simulink.

**Figures**

* step1_speed_distance_response.png
* step1_model.png

**Results**

* step1_results.txt

---

### Step 2 – Vehicle Parameter Sensitivity Analysis

Conducted sensitivity studies to evaluate the impact of vehicle mass and aerodynamic drag on overall performance and lap time.

**Figures**

* step2_drag_sensitivity.png
* step2_mass_sensitivity.png

**Results**

* drag_sensitivity_results.txt
* mass_sensitivity_results.txt

---

### Step 3 – Track Modelling and Lap Time Analysis

Extended the model to include road gradients, corner speed estimation, grip sensitivity analysis, track comparison studies and lap time segmentation.

**Figures**

* road_gradient_study.png
* grip_sensitivity.png
* track_comparison.png
* speed_vs_distance.png

**Results**

* gradient_results.txt
* grip_sensitivity_results.txt
* track_comparison_results.txt

---

### Step 4 – Advanced Vehicle Dynamics Simulator

Implemented a multi-gear transmission system, dual braking zones and a telemetry dashboard for real-time monitoring of vehicle behaviour. The final model combines vehicle dynamics, braking logic, gearbox control and lap time estimation into a complete racing simulator.

**Figures**

* telemetry_dashboard.png
* gearbox_force_profile.png
* brake_zone_response.png
* drive_force_profile.png

**Results**

* final_laptime_results.txt

---

## Tools and Technologies

* MATLAB
* Simulink

## Key Features

* Longitudinal vehicle dynamics modelling
* Aerodynamic drag analysis
* Vehicle mass sensitivity studies
* Road gradient modelling
* Corner speed estimation
* Grip sensitivity analysis
* Track comparison and lap time studies
* Multi-gear transmission modelling
* Dual braking zone implementation
* Telemetry dashboard development
* Lap time estimation and performance evaluation

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
