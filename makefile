# ffmpeg -f concat -i input.txt -c copy output.mp4
# input.txt:
# file 'clase1.1.mp4'
# file 'clase1.2.mp4'

all:
	make -C bayes.2020.1
	make -C bayes.2021.1
	make -C bayes.2023.1
	make -C bayes.2023.2
