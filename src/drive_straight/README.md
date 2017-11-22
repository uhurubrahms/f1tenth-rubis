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

- But we can find value <b>65.53299</b> in ranges data. This yields weird pid_error and steering angle in dist_finder.py and control.py. </br>==> What does this value mean?

- I discarded distance values that are over data.range_max or below data.range_min. (There are data.ranges data whose absolute value ranges between 0 and 17 when theta is 50. I'm taking them as normal cases.) In that case, getRange method does nothing and just returns in dist_finder.py, thus PID control in control.py does not work. I have no idea what this measure will result in. 
