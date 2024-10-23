# ffmpeg -f concat -i input.txt -c copy output.mp4
# input.txt:
# file 'clase1.1.mp4'
# file 'clase1.2.mp4'

# Cortar entre start y end
# #ffmpeg -copyts -ss [start] -i in.mp4 -to [end] -map 0 -c copy out.mp4

# Step 1: Split the video (re-encode for clean cuts)
# ffmpeg -ss 00:02:10 -i 2024-08-07-DIA2-manana-pluma.mp4 -to 00:22:35 -c:v h264_nvenc -crf 23 -preset medium -c:a aac Leila_Asplanato1.mp4
# ffmpeg -ss 00:02:10 -i 2024-08-07-DIA2-manana-pluma.mp4 -to 00:22:35 -c:v libx264 -crf 23 -preset medium -c:a aac Leila_Asplanato1.mp4


all:
	make -C bayes.2020.1
	make -C bayes.2021.1
	make -C bayes.2023.1
	make -C bayes.2023.2

reduce_bit_rate:
	# 1M bitrate video 128k audio.
	#ffmpeg -i input.mp4 -c:v h264_nvenc -preset p4 -rc vbr -b:v 0.5M -c:a aac -b:a 128k output.mp4
	#  -c:v h264_nvenc: This specifies the use of the NVENC H.264 encoder.
	#  -preset p4: This sets the encoding preset. NVENC presets range from p1 (fastest) to p7 (slowest/best quality). P4 is a balanced option.
	#  -rc vbr: This sets the rate control mode to variable bitrate.

	ffmpeg -i input.mp4 -b:v 0.5M -b:a 128k output.mp4

get_image_size_of_a_video:
	ffprobe -v error -select_streams v:0 -count_packets -show_entries stream=width,height -of csv=p=0 input.mp4

add_image_to_a_video:
	# main_w, main_h = tamaño del video
	# overlay_w overlay_h = tamaño de la imagen
	ffmpeg -i input.mp4 -i image.png -filter_complex "[0:v][1:v] overlay=W-w:H-h:enable='between(t,0,20)'" -pix_fmt yuv420p -c:a copy -c:v h264_nvenc output.mp4

concat:
	# Step 1: Split the video and create a concat file
	ffmpeg -i input.mp4 -t 00:05:00 -c copy part1.mp4
	ffmpeg -i input.mp4 -ss 00:07:00 -c copy part2.mp4
	echo "file 'part1.mp4'" > concat.txt
	echo "file 'part2.mp4'" >> concat.txt

	# Step 2: Concatenate the parts
	ffmpeg -f concat -safe 0 -i concat.txt -c copy output.mp4

	# Step 3: Clean up temporary files
	rm part1.mp4 part2.mp4 concat.txt
