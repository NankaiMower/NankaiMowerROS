# NankaiMowerROS
割草机ROS软件和算法 (开发中)

## 开发备忘

```
docker run \
    --volume $HOME/project/NankaiMowerROS:/opt/NankaiMower \
	--device /dev/ttyAMA0:/dev/ttyAMA0 \
    --device /dev/ttyAMA1:/dev/ttyAMA1 \
    --device /dev/ttyAMA2:/dev/ttyAMA2 \
    --device /dev/ttyAMA3:/dev/ttyAMA3 \
    --device /dev/ttyAMA4:/dev/ttyAMA4 \
    --network="host" \
    -it \
    nankaimower:baseline \
    /bin/bash
```


```
cd /opt/NankaiMower/
source devel/setup.bash; source mower_config.sh
```

```
pip install empy==3.3.4
```

通信: mower_comms:

```
catkin_make -DCATKIN_WHITELIST_PACKAGES="mower_msgs;ntrip_client;;vesc_driver;xesc;xesc_2040_driver;xesc_driver;xesc_interface;xesc_msgs;xbot_msgs;xbot_driver_gps;vesc_driver;mower_comms"
source devel/setup.bash; source mower_config.sh
roslaunch open_mower _comms.launch
```

# ROS Workspace

[![Build](https://github.com/ClemensElflein/open_mower_ros/actions/workflows/build-image.yaml/badge.svg)](https://github.com/ClemensElflein/open_mower_ros/actions/workflows/build-image.yaml)

This folder is the ROS workspace, which should be used to build the OpenMower ROS software.
This repository contains the ROS package for controlling the OpenMower.

There are references to other repositories (libraries) needed to build the software. This way, we can track the exact version of the packages used in each release to ensure package compatibility.
Currently, the following repositories are included:

- **slic3r_coverage_planner**: A coverage planner based on the Slic3r software for 3d printers. This is used to plan the mowing path.
- **teb_local_planner**: The local planner which allows the robot to avoid obstacles and follow the global path using kinematic constraints.
- **xesc_ros**: The ROS interface for the xESC motor controllers.

## Getting started

### Running on your machine

OpenMower requires ROS Noetic. ([installation instruction](http://wiki.ros.org/noetic/Installation)) There is no distributed release package yet, for development and test purpose it's best to build the workspace on your own.

By default, OpenMower is supposed to run on an ARM-based Raspberry boards: https://x-tech.online/2022/01/installing-ros-noetic-on-a-headless-raspberry-pi-4-with-ubuntu-20-04/

#### Fetch Dependencies
Before building, you need to fetch this project's dependencies. The best way to do this is by using rosdep:

```bash
sudo apt install python3-rosdep
sudo rosdep init
```

Run in the repository's root:

```bash

rosdep update
rosdep install --from-paths src --ignore-src --default-yes
```

#### Build workspace

Just build as any other ROS workspace: `catkin_make`
Once it's done, another step is to source workspace env vars:
```bash
source devel/setup.bash
```

#### Launch OpenMower

OpenMower ROS package is distributed with [roslaunch](http://wiki.ros.org/roslaunch) launch files.
There are few in: `src/open_mower/open_mower/launch`, however the `open_mower.launch` runs everything needed to mow.

```bash
roslaunch open_mower open_mower.launch
```

Before you launch `open_mower` package, env vars with configuration have to be set.

```bash
cp src/open_mower/open_mower/config/mower_config.sh.example mower_config.sh
source mower_config.sh # it's expected to adjust the file
```

### Running in a container

TBD (no automated image build yet)

## Contribution

### How to Build Using CLion IDE

First, launch CLion in a sourced environment. For this I use the following bash file:

```bash
#!/bin/zsh

source <your_absolute_path_to_repository>/devel/setup.zsh

# You can find this path in the Jetbrains Toolbox
nohup <your_absolute_path_to_clion>/clion.sh >/dev/null 2>&1 &
```


Then, open the `src` directory. CLion will prompt with the following screen:

![CLion CMake Settings](./img/clion_cmake_settings.png)

Copy the settings for **Build directory** and **CMake options**. Everything else can stay the same. This is all you need!

# Notes / ToDos
- For local navigation, I have tried to use the teb_local_planner. Unfortunately, it seems that (at least for me) the noetic version is VERY broken. Therefore I added the current melodic dev version as git submodule to this repo. It seems to work fine with ROS noetic and this setup here.
- If the map has no docking point set, planning crashes as soon as we try to approach the docking point. TODO: check, before even starting to mow.
# License

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.

Feel free to use the design in your private/educational projects, but don't try to sell the design or products based on it without getting my consent first. The idea here is to share knowledge, not to enable others to simply sell my work. Thank you for understanding.

