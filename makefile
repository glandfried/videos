# ffmpeg -f concat -i input.txt -c copy output.mp4
# input.txt:
# file 'clase1.1.mp4'
# file 'clase1.2.mp4'

# Cortar entre start y end
#ffmpeg -copyts -ss [start] -i in.mp4 -to [end] -map 0 -c copy out.mp4

all:
	make -C bayes.2020.1
	make -C bayes.2021.1
	make -C bayes.2023.1
	make -C bayes.2023.2

reduce_bit_rate:
	# 1M bitrate video 128k audio.
	ffmpeg -i input.mp4 -b:v 0.5M -b:a 128k output.mp4
