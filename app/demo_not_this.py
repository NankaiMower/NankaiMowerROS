import cv2
import subprocess

# RTMP服务器地址
rtmp = "rtmp://192.168.252.140:8081/video"
# 读取视频并获取属性
cap = cv2.VideoCapture(0)
size = (int(cap.get(cv2.CAP_PROP_FRAME_WIDTH)), int(cap.get(cv2.CAP_PROP_FRAME_HEIGHT)))
sizeStr = str(size[0]) + 'x' + str(size[1])
command = ['ffmpeg',
    '-y', '-an',
    '-f', 'rawvideo',
    '-vcodec','rawvideo',
    '-pix_fmt', 'bgr24',
    '-s', sizeStr,
    '-r', '25',
    '-i', '-',
    '-c:v', 'libx264',
    '-pix_fmt', 'yuv420p',
    '-preset', 'ultrafast',
    '-f', 'flv',
    rtmp]
pipe = subprocess.Popen(command, shell=False, stdin=subprocess.PIPE
)
while cap.isOpened():
    success, frame = cap.read()
    if success:
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break
        pipe.stdin.write(frame.tostring())
cap.release()
pipe.terminate()