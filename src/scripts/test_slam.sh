#!/bin/sh
xterm -e " source /opt/ros/kinetic/setup.bash; roscore " &
sleep 2
xterm -e " source /home/workspace/udacity_robotics_project5/devel/setup.bash; roslaunch turtlebot_gazebo turtlebot_world.launch " &
sleep 10
xterm -e " source /home/workspace/udacity_robotics_project5/devel/setup.bash; roslaunch turtlebot_teleop keyboard_teleop.launch " &
sleep 5
xterm -e " source /home/workspace/udacity_robotics_project5/devel/setup.bash; rosrun gmapping slam_gmapping" &
sleep 5
xterm -e " source /home/workspace/udacity_robotics_project5/devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch "