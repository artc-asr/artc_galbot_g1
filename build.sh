#!/bin/bash
# Builds the workspace. GZ_VERSION=harmonic is required: without it gz_ros2_control
# silently builds against Gazebo Fortress and its plugin will not load in Harmonic.
set -e
cd "$(dirname "$0")"
source /opt/ros/humble/setup.bash
export GZ_VERSION=harmonic
colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=OFF "$@"
