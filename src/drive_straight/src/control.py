#!/usr/bin/env python

import rospy
from drive_straight.msg import drive_param
from drive_straight.msg import pid_input

# All needs to be modified later.
kp = 14.0
kd = 0.09
servo_offset = 18.5	# zero correction offset in case servo is misaligned.
prev_error = 0.0
vel_input = 25.0

pub = rospy.Publisher('drive_parameters', drive_param, queue_size=1)

def control(data):
    global prev_error
    global vel_input
    global kp
    global kd

	## Your code goes here
	# 1. Scale the error
	# 2. Apply the PID equation on error
	# 3. Make sure the error is within bounds
    pid_error = data.pid_error
    error_p = pid_error * kp
    error_d = kd * (prev_error - pid_error)
    angle = error_p + error_d


    prev_error = pid_error

	## END

        # Case when angle is so big such as 800
        # ==> when pid_error is big (58.47)
        # ==> when data.ranges[380] (50 degrees ray) = 65.53 (the same value as 0 degree ray distance)


    msg = drive_param();
    msg.velocity = vel_input


    # To set the limit of steering angle.. is this value okay?
    if angle > 100:
        angle = 100
    elif angle < -100:
        angle = -100    

    msg.angle = angle

    print("--- Adjusted angle: "+ str(angle))

    pub.publish(msg)

if __name__ == '__main__':
    #global kp
    #global kd
    #global vel_input

    print("Listening to error for PID")
    #kp = input("Enter Kp Value: ")
    #kd = input("Enter Kd Value: ")
    #vel_input = input("Enter Velocity: ")

    rospy.init_node('pid_controller', anonymous=True)
    rospy.Subscriber("error", pid_input, control)
    rospy.spin()
