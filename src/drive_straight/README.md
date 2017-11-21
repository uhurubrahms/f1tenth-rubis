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

### Refining values
- In laser scanned messages by LIDAR:
  > range_min: 0.019999..</br>
  > range_max: 30.0
which means the min/max distance it can detect.

- But we can find value <br>65.53299</br> in ranges data. This yields weird pid_error and steering angle in dist_finder.py and control.py. ==> What does this value mean?

- There are values whose absolute value ranges between 0 and 17 when theta is 50 degrees. I'll take these numbers as normal values.
