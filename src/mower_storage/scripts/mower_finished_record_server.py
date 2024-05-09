import rospy
import os
import json

# 自定义服务
from mower_storage.srv import MowerFinishedRecord, MowerFinishedRecordResponse

def DoReq(req):
    # 准备要保存的数据

    datetime = req.datetime

    json_data = {
        "date": datetime,
        "finished": req.is_finished,
        "completion_percentage": req.completion_percentage,
        "time_spent": req.time_spent,
        "distance_travelled": req.distance_travelled,
        "route": req.route,
    }

    # 确定文件名
    filename = f"{datetime}.json"

    # 创建存储目录
    storage_dir = "./storage/mower_history"
    if not os.path.exists(storage_dir):
        os.makedirs(storage_dir)

    # 完整的文件路径
    file_path = os.path.join(storage_dir, filename)

    # 尝试保存数据
    try:
        # 打开文件用于写入
        with open(file_path, 'a', encoding='utf-8') as f:
            # 使用json.dump()将json_data写入文件
            json.dump(json_data, f, ensure_ascii=False, indent=4)
        resp = MowerFinishedRecordResponse(True)
        return resp
    except Exception as e:
        rospy.logerr(f"Failed to save data: {e}")
        resp = MowerFinishedRecordResponse(False)
        return resp


if __name__ == "__main__":
    # 初始化节点
    rospy.init_node('mower_finished_record_server')
    # 创建服务
    service = rospy.Service('/storage/mower_finished_record', MowerFinishedRecord, DoReq)
    rospy.loginfo("Mower Finished Record Server is ready.")

    # 等待服务调用
    rospy.spin()