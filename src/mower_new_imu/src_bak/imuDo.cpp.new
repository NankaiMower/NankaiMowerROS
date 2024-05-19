#include "ros/ros.h"
#include "im948_CMD.h"
#include "ros/ros.h"
#include "std_msgs/String.h"
#include <serial/serial.h> 
#include <sensor_msgs/Imu.h>
#include <sensor_msgs/MagneticField.h>
#include <sstream>
#include "tf/transform_datatypes.h"

#define comPort "/dev/ttyUSB0" // 指定与模块通信的串口，可通过该指令查看用的是哪个串口 ls -l /dev/ttyUSB*

serial::Serial com; //声明串口对象 

ros::Publisher sensor_imu_pub;
ros::Publisher sensor_mag_pub;

sensor_msgs::Imu sensor_imu_msg;//要发布的IMU数据
sensor_msgs::MagneticField sensor_mag_msg;//要发布的IMU数据

//------------------------------------------------------------------------------
// 描述: 串口发送数据给设备
// 输入: buf[Len]=要发送的内容
// 返回: 返回发送字节数
//------------------------------------------------------------------------------
int UART_Write(const U8 *buf, int Len)
{
    return com.write(buf, Len); //发送串口数据 
}

int main(int argc, char *argv[])
{

    setlocale(LC_ALL,"");//设置编码, 防止中文乱码
    ros::init(argc,argv,"imu_node");
    ros::NodeHandle nh;
    sensor_imu_pub = nh.advertise<sensor_msgs::Imu>("/imu/data_raw", 1);
    sensor_mag_pub = nh.advertise<sensor_msgs::MagneticField>("/img/mag", 1);

    sensor_mag_msg.header.seq = 0;
    sensor_imu_msg.header.seq = 0;

    try{//设置串口属性，并打开串口 
        com.setPort(comPort); 
        com.setBaudrate(115200); 
        serial::Timeout to = serial::Timeout::simpleTimeout(1000); 
        com.setTimeout(to); 
        com.open(); 
    }
    catch (serial::IOException& e) 
    { 
        ROS_ERROR_STREAM("Unable to open port-->" << comPort); 
        return -1; 
    }
    if(!com.isOpen()) 
    {// 串口打开失败
        return -1; 
    } 
    ROS_INFO_STREAM("Serial Port initialized"); 


    /**
     * 设置设备参数
     * @param accStill    惯导-静止状态加速度阀值 单位dm/s?
     * @param stillToZero 惯导-静止归零速度(单位cm/s) 0:不归零 255:立即归零
     * @param moveToZero  惯导-动态归零速度(单位cm/s) 0:不归零
     * @param isCompassOn 1=需融合磁场 0=不融合磁场
     * @param barometerFilter 气压计的滤波等级[取值0-3],数值越大越平稳但实时性越差
     * @param reportHz 数据主动上报的传输帧率[取值0-250HZ], 0表示0.5HZ
     * @param gyroFilter    陀螺仪滤波系数[取值0-2],数值越大越平稳但实时性越差
     * @param accFilter     加速计滤波系数[取值0-4],数值越大越平稳但实时性越差
     * @param compassFilter 磁力计滤波系数[取值0-9],数值越大越平稳但实时性越差
     * @param Cmd_ReportTag 功能订阅标识
     */
    Cmd_12(5, 255, 0,  0, 2, 60, 1, 3, 5, 0x0026); // 1.设置参数
    Cmd_03();//2.唤醒传感器
    Cmd_19();//3.开启数据主动上报


    unsigned short  data_size;
    unsigned char   tmpdata[4096] ;
    
	ros::Rate loop_rate(200);//消息发布频率
    while (ros::ok())
    {//处理从串口来的Imu数据
		//串口缓存字符数
        if(data_size = com.available())
        {//com.available(当串口没有缓存时，这个函数会一直等到有缓存才返回字符数
            com.read(tmpdata, data_size);
            for(int i=0; i < data_size; i++)
            {
                Cmd_GetPkt(tmpdata[i]); // 移植 每收到1字节数据都填入该函数，当抓取到有效的数据包就会回调进入 Cmd_RxUnpack(U8 *buf, U8 DLen) 函数处理
            }
        }
        //处理ROS的信息，比如订阅消息,并调用回调函数 
        ros::spinOnce(); 
        loop_rate.sleep(); 
    }

    return 0;
}
