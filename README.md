# SRTP
In this repository, I will introduce my SRTP and some work that may be useful.

My work mainly uses ISAAC SIM. 


This repository expands upon the work introduced in [orbbec_competition](https://github.com/EnderMandS/orbbec_competition) by incorporating semi-real physical simulation elements into the project. Building on the original implementation, this project integrates motion capture technology to record the drone’s movement and posture in real time. The captured data is then transmitted via ROS communication to simulate the drone’s actions within NVIDIA’s Isaac Sim environment.

## Overview

The project showcases a unique system that bridges the gap between real-world physical interactions and digital simulation. By leveraging motion capture, the drone’s dynamic movements are accurately mirrored in a virtual environment, offering a robust simulation that is responsive to actual physical inputs.

## Key Features

- **Semi-Real Simulation Integration**: Uses live motion capture data to drive a simulated drone within Isaac Sim, creating a hybrid physical-digital system.
- **ROS Communication**: Implements ROS for real-time data exchange between the physical drone and the simulation, ensuring synchronization of movements.
- **Isaac Sim Versions**: Initially developed with Isaac Sim version 4.1.0, with subsequent iterations expanding support to versions 4.2 and 4.5 as the project evolved.
- **Inspired by Existing Work**: Adapts and builds upon methodologies from the orbbec_competition project to enhance simulation accuracy and operational robustness.

## Getting Started

### Environment
The demo program is based on [NVIDIA Isaac Sim](https://developer.nvidia.cn/isaac-sim) and [ROS1 Noetic](https://wiki.ros.org/noetic).

Make sure you have Isaac Sim and ROS1 installed.



Additionally , to set up the simulation environment and experience the semi-real simulation system, please refer to the official [Isaac Sim documentation](https://developer.nvidia.com/isaac/sim) for detailed instructions. Additional setup steps specific to this project are documented within the repository.

