from RealtimeSTT import AudioToTextRecorder
import pyttxx3


def process_text(text):
    print("Processed Text:", text)

if __name__ == "__main__":
    print("Wait until it says 'Start speaking'...")
    recorder = AudioToTextRecorder(language='en')

    while True:
        recorder.text(process_text)