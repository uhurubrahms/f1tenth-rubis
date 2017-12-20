#!/usr/bin/env python

import rospy
# import rosbag # ==> To test with bag file
import math
from sensor_msgs.msg import LaserScan
from drive_straight.msg import pid_input

# DESIRED_TRAJECTORY = 1
# vel = 30

DESIRED_TRAJECTORY = 1.2 # 301 Hallway width => 2.4m
vel = 5

pub = rospy.Publisher('error', pid_input, queue_size=10)


# ==== NOT NEEDED: print 0th distance for each message ====
# bag = rosbag.Bag('src/goStraight.bag')
# i = 1
# for topic, msg, t in bag.read_messages(topics=['/scan']):
  # print(i, msg.ranges[0])
  # i += 1
# bag.close()



def getRange(data, theta):
  # Input: Lidar scan data
  # Output: distance of scan at angle theta
  
  # theta - 90 : angle between car's axis and theta
  car_axis_theta = math.radians(theta) - math.pi/2
  
  # This should be within LIDAR's view range (-135 ~ 135 degree) 
  if car_axis_theta > 3*math.pi/4:
    car_axis_theta = 3*math.pi/4
  elif car_axis_theta < -3*math.pi/4:
    car_axis_theta = -3*math.pi/4
  
  
  # Get distance value from 'ranges' array
  # 'ranges' angle stretches from -135 to 135 with 0.25 step angle.
  # Recall that car_axis_theta is the angle from car's axis (=angle from lidar)
  # => need to add 135 degrees (the left half angle of car's axis) to car_axis_theta to get the value from the right position index

  dist_angle = (3*math.pi/4 + car_axis_theta) / data.angle_increment # float type index
  dist_angle = int(dist_angle) # Make it index
  detected_dist = data.ranges[dist_angle]
 

  if(detected_dist < data.range_min):
    return data.range_min
  elif detected_dist > data.range_max:
    return data.range_max
    # Should discard these weird values (especially 65.xxx) but HOW?
    #print("theta: "+str(theta) + ", ranges[" + str(dist_angle) + "] = " + str(detected_dist)) 
  # Do not return detected_dist
  else:
    return detected_dist




def callback(data):
  # theta: the angle at which the distance is required...
  theta = 50 # Given
  a = getRange(data, theta)
  b = getRange(data, 0)
  swing = math.radians(theta)


  ## Calculate the orientation and distance from the wall

  # Refer to Tutorial 6 of F1/10

  # ==== Definition of variables ====
  # alpha = orientation of the car with respect to the wall.
  # AB = distance of the car from the wall
  # CD = adjusted distance of the car from the wall (due to its high speed)
  # AC = (target distance) car moved forward slightly in the same direction due to its running speed
  
  if a is None or b is None:
  # If one of a or b has a value that is out of the lidar detection range,
  # do not calculate anything. Don't do PID control as a result.
    return

  alpha = math.atan2(a * math.cos(swing) - b, a * math.sin(swing))
  AB = b * math.cos(alpha)
  AC = 1 # Can be changed
  CD = AB + AC * math.sin(alpha)

  error = CD - DESIRED_TRAJECTORY  
  # print("detected_dist a: " + str(a) + " / b: " + str(b))
  print("error(dist): "+str(error))
  # weird error value: 58

  # end
  
  msg = pid_input()
  msg.pid_error = error
  msg.pid_vel = vel
  pub.publish(msg)







if __name__ == '__main__':
  print("Laser node started")
  rospy.init_node('dist_finder', anonymous = True)
  rospy.Subscriber("scan", LaserScan, callback)
  rospy.spin()

