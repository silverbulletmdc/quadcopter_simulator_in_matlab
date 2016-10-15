#MATLAB四旋翼仿真
![这里写图片描述](http://img.blog.csdn.net/20161015132003310)
本项目是使用matlab实现的一个四旋翼仿真器，模型按照本人在16年上半年翻译的一篇文章《四旋翼动力学和仿真翻译（Quadcopter Dynamics and Simulation）》。作为了解飞控基本功能使用。
http://blog.csdn.net/u013859301/article/details/51284371
模型各个参数的选取见[模型参数说明](https://github.com/silverbulletmdc/quadcopter_simulator_in_matlab/blob/master/%E6%A8%A1%E5%9E%8B%E5%8F%82%E6%95%B0%E8%AF%B4%E6%98%8E.md)
##使用方法
rotor_input.m中提供了当前无人机姿态和位置信息，返回值将会发给四旋翼。修改该函数后，命令行运行```quadcopter```即可。
##更新日志
- 2016/10/15 完成高度控制