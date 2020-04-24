# udacity_robotics_project5
This is a project that enables a household butler robot in gazebo, the robot picks up packages from a pre-defined location
and then delivers it to another location in a house with a known map. 

The following are the primary packages used to make it work.

# turtlebot_gazebo - the platform
The turtlebot_gazebo ros package provides all of the nodes necessary to simulate a turtlebot in Gazebo. 

# turtlebot_teleop - manual control
The turtlebot teleop package gives us ways to control the turtlebot by publishing commands to the /cmd_vel topic. We used the 
keyboard as the input device by running the turtlebot_teleop_key node.

# turtlebot_rviz_launchers
This package was used to launch rviz with prdefined configurations for turtlebot, so as to enable easy data visualization. 
This was used after setting up the simulations to view the sensor data and test robot behaviour in rviz.

# gmapping - slam
This package provides laser based slam as a ros node. The turtlebot converts the depth values from its rgbd camera to 
laser scan and publishes it on the /scan topic. This is used by the slam_gmapping node to perform slam. This was tested but
not used in the final project as a map was already available and we only needed localisation.

# navigation - ros navigation stack
This was the package used for navigation.The ros navigation stack package is a collection of packages that enables navigation for robots in a 2D world. It takes in 
information from sensor streams(laser data, odometry), a goal pose, the map file and sends safe velocity commands to the 
robot to drive it towards its goal while avoiding obstacles. Some of the other packages that are a part of this stack 
are described below.
 
# amcl - localization
The amcl package provides adaptive monte carlo localization in a 2D plane, it takes the topics /scan, /tf, /initialpose, /map
and publishes the filtered /amcl pose after applying the particle filter to estimate the current pose. This was used for 
localization in the final project.

# global_planner - path planning
This node provides path planning based on either A* or Dijkstras.

# map_server
This is a node that provides map data as a ros service.
