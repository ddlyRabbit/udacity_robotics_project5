#!/bin/sh
xterm -e " source /opt/ros/kinetic/setup.bash; roscore " &
sleep 2
xterm -e " source /home/workspace/udacity_robotics_project5/devel/setup.bash; roslaunch turtlebot_gazebo turtlebot_world.launch " &
sleep 10
xterm -e " source /home/workspace/udacity_robotics_project5/devel/setup.bash; roslaunch turtlebot_gazebo amcl_demo.launch " &
sleep 10
xterm -e " source /home/workspace/udacity_robotics_project5/devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch " &
sleep 20
xterm -e " source /home/workspace/udacity_robotics_project5/devel/setup.bash; rosrun pick_objects pick_objects_node " &
sleep 2
xterm -e " source /home/workspace/udacity_robotics_project5/devel/setup.bash; rosrun add_markers add_markers_node " &