#!/usr/bin/env python

#Import des bibliotheques necessaires pour les messages
import rospy
import numpy as np
from std_msgs.msg import String,Float32
from sensor_msgs.msg import LaserScan
class listener:
    

    def __init__(self):
        """
         In ROS, nodes are uniquely named. If two nodes with the same
         name are launched, the previous one is kicked off. The
         anonymous=True flag means that rospy will choose a unique
         name for our 'listener' node so that multiple listeners can
         run simultaneously.
        """
        rospy.init_node('listener_min_dist', anonymous=True)
        self.pub_min_dist = rospy.Publisher('/min_dist', Float32, queue_size=1) #Publisher (Message envoye sur topic cree "min_dist")
        self.sub_scan= rospy.Subscriber('/scan', LaserScan , self.scan_callback) #Subscriber (Ecoute du topic des donnees issues du Laser de la turtlebot)
        rospy.loginfo("[listener_scan] started...")

    def scan_callback(self,data):
        #Fonction d ecriture sur le topic min_dist  de la valeure minimale (hors NaN values) retenue sur les donnees issues du Laser
        rospy.loginfo("scan min distance")
        min_dist = Float32()
        min_dist.data = np.nanmin(data.ranges)
        rospy.loginfo(min_dist)
        self.pub_min_dist.publish(min_dist)


if __name__ == '__main__':
    try:
        listener()
        # spin() simply keeps python from exiting until this node is stopped
        rospy.spin()
    except rospy.ROSInterruptException:
        pass