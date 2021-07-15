
from tqdm import tqdm
import wave
import contextlib
import os
import datetime

in_dir = "../../raw_data/AISHELL3"

with open("./train.txt", "r") as f:
    lines = f.readlines()

myDict = dict()
myList = list()
total_duration = 0
for i, line in enumerate(tqdm(lines)):
    wav_name, speaker, text, _ = line.split('|')
    wav_path = os.path.join(in_dir, speaker, wav_name+".wav")
    with contextlib.closing(wave.open(wav_path,'r')) as f:
        frames = f.getnframes()
        rate = f.getframerate()
        duration = frames / float(rate)
    myList.append((wav_name, duration))
    if speaker not in myDict:
        myDict[speaker] = duration
    else:
        myDict[speaker] += duration
    total_duration += duration

print(total_duration)
speakerRank = sorted(myDict.items(), key=lambda x : x[1], reverse=True)
audioRank = sorted(myList, key=lambda x : x[1], reverse=True)

with open("speaker_durations.csv", "w") as f:
    total_duration = str(datetime.timedelta(seconds=total_duration)).replace(",", "")
    f.write("total_duration,{}\n".format(total_duration))
    f.write("speaker,duration\n")
    print('Writing to CSV...with total duration: {}'.format(total_duration))
    for i, speaker in enumerate(speakerRank):
        speaker, duration = speaker
        duration, _ = str(datetime.timedelta(seconds=duration)).split(".")
        f.write("{},{}\n".format(speaker, duration))

with open("audio_durations.csv", "w") as f:
    f.write("audio,duration\n")
    print('Writing to CSV...with total duration: {}'.format(total_duration))
    for i, audio in enumerate(audioRank):
        audio, duration = audio
        duration = str(datetime.timedelta(seconds=duration))
        f.write("{},{}\n".format(audio, duration))