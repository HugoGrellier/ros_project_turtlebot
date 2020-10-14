#!/usr/bin/env python

#Import des bibliotheques necessaires pour les messages et les fonctions
import rospy
import time
from std_msgs.msg import String,Float32
from kobuki_msgs.msg import Sound,Led

class listener:
    SOUND_VALUE = 3 #Valeur du son joue sur la turtlebot

    def __init__(self):
        """
         In ROS, nodes are uniquely named. If two nodes with the same
         name are launched, the previous one is kicked off. The
         anonymous=True flag means that rospy will choose a unique
         name for our 'listener' node so that multiple listeners can
         run simultaneously.
        """
        rospy.init_node('sound_min_dist_feedback', anonymous=True)

        self.pub_feedback_dist = rospy.Publisher('/mobile_base/commands/sound', Sound, queue_size=1)#Publisher (Message envoye sur topic de son du bumper)
        self.pub_LED_feedback_dist = rospy.Publisher('/mobile_base/commands/led1', Led, queue_size=1)#Publisher (Message envoye sur topic d allumage de la Led)

        self.sub_min_dist= rospy.Subscriber('/min_dist', Float32 , self.mindist_callback) #Subscriber (Ecoute du topic min_dist donnant la distance minimale depuis le Laser)
        self.rate = rospy.Rate(1)
        self.led_color = 0 #choix de la couleur de la Led
        self.sound_runtime()
        
        rospy.loginfo("[listener_min_dist] started...")
  
    def sound_runtime(self):
        #Fonction envoyant sur les topics du son et la Led les commandes d allumage-extinction et de son (a une frequence calculee dans la fonction mindist_callback)
        while not rospy.is_shutdown():
            self.pub_feedback_dist.publish(3)
            self.rate.sleep()
            
            if(self.led_color == 0):
                self.led_color = 3
            else:
                self.led_color = 0

            self.pub_LED_feedback_dist.publish(self.led_color)
  
 

    def mindist_callback(self,data):
        #Fonction calculant la frequence des sons et d extinction-allumange de la Led (en fonction de la position de l obstacle le plus pres)
        rospy.loginfo("change rate")
        self.rate = rospy.Rate(5/data.data)
        
        


if __name__ == '__main__':
    try:
        listener()
        # spin() simply keeps python from exiting until this node is stopped
        rospy.spin()
    except rospy.ROSInterruptException:
        pass