# Package for the real race! (for Week 11 ~ 13)
### Keep in mind 
- Before running .py file, be sure to make it executable
  > roscd drive_straight/src </br>
  > chmod +x dist_finder.py

- Don't forget to include '#!/usr/bin/env python' shebang line at the beginning since the script is executed by shell, not python.


### How to test with rosbag file
- Run the .py script and play the bag file at the same time in another cmd window.
  > rosrun drive_straight dist_finder.py</br>
  > rosbag play goStraight.bag
