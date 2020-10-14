#!/usr/bin/env python

#Import des bibliotheques necessaires pour les messages
import rospy
from std_msgs.msg import String,Float32
from kobuki_msgs.msg import Sound, BumperEvent

class listener:
    SOUND_VALUE=3 #valeur du son voulant etre joue sur le turtlebot lors de l activation du bumper

    def __init__(self):
        """
         In ROS, nodes are uniquely named. If two nodes with the same
         name are launched, the previous one is kicked off. The
         anonymous=True flag means that rospy will choose a unique
         name for our 'listener' node so that multiple listeners can
         run simultaneously.
        """
        rospy.init_node('listener_bumper', anonymous=True)
        self.pub_sound = rospy.Publisher('/mobile_base/commands/sound', Sound, queue_size=1) #Publisher (Message envoye sur topic du son de la turtlebot)
        self.sub_bumper = rospy.Subscriber('/mobile_base/events/bumper', BumperEvent , self.bumper_callback) #Subscriber (Ecoute du topic du bumper)
        rospy.loginfo("[listener_bumper] started...")

    def bumper_callback(self,data):
        #Fonction afin de publish sur le topic du son de la turtlebot
        rospy.logwarn("bumper trigger")
        if data.state==1:
            s=Sound()
            s.value=self.SOUND_VALUE
            self.pub_sound.publish(s) #Error sound 



if __name__ == '__main__':
    try:
        listener()
        # spin() simply keeps python from exiting until this node is stopped
        rospy.spin()
    except rospy.ROSInterruptException:
        pass