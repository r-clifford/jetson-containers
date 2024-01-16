#!/bin/bash
# TODO: integrate in dockerfile
pushd /workspace
rosdep install --from-paths src -i -y
colcon build
echo ""
echo "source /workspace/install/setup.bash"
echo "ros2 launch f1tenth_stack bringup_launch.py"
popd