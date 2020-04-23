#!/bin/sh
xterm -e " source /opt/ros/kinetic/setup.bash; roscore " &
sleep 2
xterm -e " source /home/workspace/udacity_robotics_project5/devel/setup.bash; roslaunch turtlebot_gazebo turtlebot_world.launch " &
sleep 10
xterm -e " source /home/workspace/udacity_robotics_project5/devel/setup.bash; roslaunch turtlebot_navigation amcl_demo.launch " &
sleep 30
xterm -e " source /home/workspace/udacity_robotics_project5/devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch "