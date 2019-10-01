# Quadcopter Simulator In Matlab
![sample image](http://img.blog.csdn.net/20161015132003310)

This project is a quadcopter simulator in matlab. The model follows the article [Quadcopter Dynamics and Simulation](http://blog.csdn.net/u013859301/article/details/51284371), which can be used as a beginner tutorial of quadcoptor control.

The parameters of the model can be seen in [model parameter description](https://github.com/silverbulletmdc/quadcopter_simulator_in_matlab/blob/master/%E6%A8%A1%E5%9E%8B%E5%8F%82%E6%95%B0%E8%AF%B4%E6%98%8E.md)

## Usage

`rotor_input.m` provides the status of the quadcopter which will be fed into the quadcoptor. Run `quadcopter` after you make your custom modification.

## Parameters Config

Change the `param.m` to modify the global configuration, include PID parameters, simulator parameters and etc. 

## Update Logs
- 2016/10/16 Finish PID control.
- 2016/10/15 Finish VRML simulator.
- 2016/10/15 Finish PID control of height.
