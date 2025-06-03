import whisper
import torch

# Check if CUDA (GPU support) is available and print information
print(f"PyTorch version: {torch.__version__}")
if torch.cuda.is_available():
    print("CUDA is available! Whisper will try to use the GPU.")
    print(f"GPU Name: {torch.cuda.get_device_name(0)}")
else:
    print("CUDA is not available. Whisper will use the CPU (this may be slower).")
    print("If you have an NVIDIA GPU, ensure PyTorch is installed with CUDA support.")

model = whisper.load_model("small") # "base"/"medium"/"large"

# Specify the device if you want to be explicit (usually not needed for a single GPU setup)
# device = "cuda" if torch.cuda.is_available() else "cpu"
# model = whisper.load_model("medium", device=device)

print(f"Model loaded on: {'cuda' if next(model.parameters()).is_cuda else 'cpu'}")

# Transcribe the audio from the video file, specifying the language as Spanish.
print("Starting transcription...")
result = model.transcribe("mutt/ixpandit-01.mp4", language="es")

# Print the transcribed text
print("\nTranscription:")
print(result["text"])

# To save the transcription to a file:
output_filename = "transcription_gpu.txt"
with open(output_filename, "w", encoding="utf-8") as f:
    f.write(result["text"])

print(f"\nTranscription saved to {output_filename}")
