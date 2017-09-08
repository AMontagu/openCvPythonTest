import cv2
import sys
import logging as log
import datetime as dt
from time import sleep
#print(help(cv2))

video_capture = cv2.VideoCapture(0)
#second argument : http://docs.opencv.org/3.3.0/d4/d15/group__videoio__flags__base.html#gga023786be1ee68a9105bf2e48c700294dacf10e9692c4166f74de62b7d00c377d0
#video_capture = cv2.VideoCapture('/dev/video0', cv2.CAP_V4L2)
#video_capture = cv2.VideoCapture('/dev/video0', cv2.CAP_OPENCV_MJPEG) NOT WORKING
#video_capture = cv2.VideoCapture('/dev/video0', cv2.CAP_FFMPEG) NOT WORKING


#fourcc = cv2.VideoWriter_fourcc(*'YUYV') NOT WORKING
#fourcc = cv2.VideoWriter_fourcc(*'DIVX')
fourcc = cv2.VideoWriter_fourcc(*'XVID')
#fourcc = cv2.VideoWriter_fourcc(*'MJPG')NOT WORKING
#out = cv2.VideoWriter('output.avi', -1, 30.0, (848,480)) NOT WORKING
#out = cv2.VideoWriter('output.avi', cv2.CAP_V4L2, fourcc, 30.0, (848,480)) NOT WORKING
out = cv2.VideoWriter('output.avi', fourcc, 30.0, (848, 480))

while True:
	if not video_capture.isOpened():
		print('Unable to load camera.')
		sleep(5)
		pass

	# Capture frame-by-frame
	ret, frame = video_capture.read()  # Display the resulting frame

	"""print(video_capture.get(cv2.CAP_PROP_FRAME_WIDTH))
	print(video_capture.get(cv2.CAP_PROP_FRAME_HEIGHT))
	print(video_capture.get(cv2.CAP_PROP_FPS))
	fourcc = video_capture.get(cv2.CAP_PROP_FOURCC)
	fourcc = int(fourcc)
	fourcc = chr((fourcc & 0XFF)) + chr((fourcc & 0XFF00) >> 8) + chr((fourcc & 0XFF0000) >> 16) + chr((fourcc & 0XFF000000) >> 24) + chr(0)
	print(fourcc)"""

	out.write(frame)

	cv2.imshow('Video', frame)

	if cv2.waitKey(1) & 0xFF == ord('q'):
		break

# When everything is done, release the capture
video_capture.release()
out.release()
cv2.destroyAllWindows()