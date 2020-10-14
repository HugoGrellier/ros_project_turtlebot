#!/usr/bin/env python

#Import des bibliotheques necessaires pour les messages
import rospy
from geometry_msgs.msg import Twist
from std_msgs.msg import Float32
class listener:

    def __init__(self):
        """
         In ROS, nodes are uniquely named. If two nodes with the same
         name are launched, the previous one is kicked off. The
         anonymous=True flag means that rospy will choose a unique
         name for our 'listener' node so that multiple listeners can
         run simultaneously.
        """
        rospy.init_node('listener_safe', anonymous=True)
        self.pub_safe = rospy.Publisher('/cmd_vel_safe_output',Twist , queue_size=1)#Publisher (Ecriture sur le topic pour la commande de la velocite du turtle bot)
        self.sub_safe = rospy.Subscriber('/cmd_vel_safe_input',Twist , self.safe_callback)#Subscriber (Ecoute du topic de commande de velocite du turtle bot)
        self.sub_min_dist = rospy.Subscriber('/min_dist',Float32 , self.min_callback)#Subscriber (Ecoute du topic min_dist donnant la distance minimale depuis le Laser)
        rospy.loginfo("[listener_safe started...")
        self.min_dist=10 #Initialisation de la premiere distance

    def safe_callback(self,data):
        #Fonction de la regulation de la vitesse du turtlebot apres detcetion d un objet
        data.linear.x=data.linear.x*self.min_dist
        data.linear.y=data.linear.y*self.min_dist
        data.linear.z=data.linear.z*self.min_dist
        self.pub_safe.publish(data)

    def min_callback(self,data):
        #fonction permtettant de recuperer la distance minimale
        self.min_dist=data.data



if __name__ == '__main__':
    try:
        listener()
        # spin() simply keeps python from exiting until this node is stopped
        rospy.spin()
    except rospy.ROSInterruptException:
        pass