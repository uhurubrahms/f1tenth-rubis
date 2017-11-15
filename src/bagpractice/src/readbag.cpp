#include <ros/ros.h>
#include <rosbag/bag.h>
#include <rosbag/view.h>
#include <std_msgs/Int32.h>
#include <std_msgs/String.h>
#include <boost/foreach.hpp>
#include <sensor_msgs/LaserScan.h>
using namespace std;
#define foreach BOOST_FOREACH


int main(int argc, char** argv){

sensor_msgs::LaserScan::ConstPtr laser0;

ros::init(argc, argv, "bag_it");

rosbag::Bag bag;
try{
  bag.open("goStraight.bag", rosbag::bagmode::Read);
}catch(int e){
  cout << "Exception occurred when opening a bag file - errno: " << e << endl;
}
//okay, so no error while opening a file.

vector<string> topics;
//topics.push_back(string("chatter"));//??
//topics.push_back(string("numbers"));//??
string laser_data = "/scan"; 
// ==> something was wrong with this topic name
// so it was not '/LaserScan' or just 'scan'
topics.push_back(laser_data);

rosbag::View view(bag, rosbag::TopicQuery(topics));

//cout << "before foreach .... " << endl;

//so message instance is void.. not looping.
foreach(rosbag::MessageInstance const m, view){
  //std_msgs::String::ConstPtr s = m.instantiate<std_msgs::String>();
  cout << m.getTopic() << endl;   
  sensor_msgs::LaserScan::ConstPtr s = m.instantiate<sensor_msgs::LaserScan>();
  
  cout << "in foreach...." << endl;
  
  if(s!=NULL){
    //cout << s->data << endl;
    cout << "range_min: " << s-> range_min << endl;
  }

/*
  std_msgs::Int32::ConstPtr i = m.instantiate<std_msgs::Int32>();
  if(i!=NULL){
    cout << i->data << endl;
  }
*/
}
cout << "what??????" << endl;
bag.close();
return (0);
}

