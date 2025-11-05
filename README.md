# BLDC Motor Control with Mathematically Generated Hall Signals

A MATLAB/Simulink implementation of BLDC motor control using hall sensor signals derived from rotor angle.

## Overview

Hall sensor signals are generated mathematically from the rotor mechanical angle instead of using physical hall sensors. A MATLAB Function block converts the rotor angle to electrical angle and generates three hall signals (A, B, C) based on the rotor position.

## Hall Signal Generation Logic

The hall signals are generated based on electrical angle sectors:

- **Hall A:** High from 0° to 180°
- **Hall B:** High from 120° to 300°
- **Hall C:** High from 240° to 360° (or 0° to 60°)

## Files

- `bldc_control.slx` - Main Simulink model
- `hallSensorGenerator.m` - Hall signal generation function

## Function Details

**`hallSensorGenerator(theta_rad, pole_pairs)`**

- **Inputs:** 
  - `theta_rad`: Rotor mechanical angle (radians)
  - `pole_pairs`: Number of pole pairs in the motor
- **Outputs:** 
  - `HallA`, `HallB`, `HallC`: Digital hall sensor signals (0 or 1)
