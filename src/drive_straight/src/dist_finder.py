import rospy
import math
from sensor_msgs.msg import LaserScan
from drive_straight.msg import pid_input

# desired_trajectory = 1
# vel = 30

desired_trajectory = 0.5
vel = 5

pub = rospy.Publisher('error', pid_input, queue_size=10)

def getRange(data, theta):
# Input: Lidar scan data
# Output: distance of scan at angle theta

## Do something with 'ranges' data you get from LaserScanned messages

  # theta - 90 = angle between car's axis and theta
  car_axis_theta = math.radians(theta) - math.pi/2
  
  # This should be within LIDAR's view range (-135 ~ 135 degree) 
  if car_axis_theta < 3*math.pi/4:
    car_axis_theta = 3*math.pi/4
  elif car_axis_theta < -3*math.pi/4:
    car_axis_theta = -3*math.pi/4
  
  
  # Get distance value from 'ranges' array
  # 'ranges' angle from -135 to 135 with 0.25 step angle.
  # Recall that car_axis_theta is the angle from car's axis (=angle from lidar)
  # => need to add 135 degrees (the left half angle of car's axis) to car_axis_theta to get the value from the right position index

  dist_angle = 3*math.pi/4 + car_axis_theta
  dist_angle = int(dist_angle)

  return data.ranges[dist_angle]




def callback(data):
  # theta: the angle at which the distance is required... (?)
  theta = 50 # Given
  a = getRange(data, theta)
  b = getRange(data, 0)
  swing = math.radians(theta)


  ## Calculate the orientation and distance from the wall

  # Refer to Tutorial 6 of F1/10

  # -- Definition of variables --
  # alpha = orientation of the car with respect to the wall.
  # AB = distance of the car from the wall
  # CD = adjusted distance of the car from the wall (due to its high speed)
  # AC = (distance) car moved forward slightly in the same direction due to its running speed

  alpha = math.atan2(a * math.cos(swing) - b, a * math.sin(swing))
  AB = b * math.cos(alpha)
  AC = 1 # Can be changed
  CD = AB + AC * math.sin(alpha)

  error = CD - desired_trajectory

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

