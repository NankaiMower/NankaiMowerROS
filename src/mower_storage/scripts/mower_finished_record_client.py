import rospy
import pytz
from datetime import datetime
from mower_storage.srv import MowerFinishedRecord, MowerFinishedRecordRequest

if __name__ == "__main__":
    # 初始化节点
    rospy.init_node('mower_finished_record_client')
    
    timezone = pytz.timezone('Asia/Shanghai')
    current_datetime = datetime.now(timezone)
    formatted_datetime = current_datetime.strftime("%Y-%m-%d %H:%M:%S")

    # 准备服务请求参数
    request = MowerFinishedRecordRequest()
    request.datetime = formatted_datetime # 当前时间戳
    request.is_finished = True  # 假设割草已完成
    request.completion_percentage = 100.0  # 假设完成比例为100%
    request.time_spent = 3600  # 假设花费了1小时
    request.distance_travelled = 500  # 假设花费了500米
    request.route = [1.1,1.2,1.3,1.4,1.5,1.6]  # 假设花费了500米
    # 调用服务
    try:
        client = rospy.ServiceProxy('/storage/mower_finished_record', MowerFinishedRecord)
        client.wait_for_service()
        response = client(request)
        if response.status:
            rospy.loginfo("Successfully recorded the mowing information.")
        else:
            rospy.logwarn("Failed to record the mowing information.")
    except rospy.ROSException as e:
        rospy.logerr(f"Service call failed: {e}")