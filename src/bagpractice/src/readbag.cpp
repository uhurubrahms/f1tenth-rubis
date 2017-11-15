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

vector<string> topics;
string laser_data = "/scan"; 
// ==> something was wrong with this topic name
// so it was not '/LaserScan' or just 'scan'
topics.push_back(laser_data);

rosbag::View view(bag, rosbag::TopicQuery(topics));
int count = 0; 
foreach(rosbag::MessageInstance const m, view){
  // cout << m.getTopic() << endl;   
  sensor_msgs::LaserScan::ConstPtr s = m.instantiate<sensor_msgs::LaserScan>();
  if(s != NULL){
    if(count == 0){
      cout << "range_min: " << s->range_min << endl;
      cout << "range_max: " << s->range_max << endl;
    }
  
    // Prints header
    cout << count+1 << ") " << endl << s->header;
  

    // Prints ranges array data from 0 to 1080
    // ==> 'ranges' data type: vector, size(): 1081
    // but 65.53299713134766 becomes 65.533

    int i;
    int len_data = (s->ranges).size();
    for(i = 0; i < len_data; i++){
      cout << i+1 << " : " << (s->ranges).at(i) << endl;
    }

    count ++;
  }
} // end foreach
cout << "-----Done scanning the bag file.-----" << endl;
cout << "# of data: " << count << endl;
// ==> 2637 messages.

bag.close();
return (0);
}

