
from hashlib import new
from tqdm import tqdm
import wave
import contextlib
import os
import datetime
import random
import json

in_dir = "../../raw_data/"

# train.txt and val.txt
# with open("../AISHELL3/train.txt", "r") as f:
#     mandLines = f.readlines()
# with open("../LibriTTS/train.txt", "r") as f:
#     EngLines = f.readlines()
# newLines = list()
# for line in mandLines:
#     newLines.append(line.strip()+'|zh')
# for line in EngLines:
#     newLines.append(line.strip()+'|eg')
# random.shuffle(newLines)
# with open("./train.txt", "w") as f:
#     for line in tqdm(newLines):
#         f.write(line+'\n')

with open("../AISHELL3/val.txt", "r") as f:
    mandLines = f.readlines()
with open("../LibriTTS/val.txt", "r") as f:
    EngLines = f.readlines()
newLines = list()
for line in mandLines:
    newLines.append(line.strip()+'|zh')
for line in EngLines:
    newLines.append(line.strip()+'|eg')
random.shuffle(newLines)
with open("./val.txt", "w") as f:
    for line in tqdm(newLines):
        f.write(line+'\n')

# speakers
# with open('../AISHELL3/speakers.json') as json_file:
#     mandSpeakers = json.load(json_file)
# with open('../LibriTTS/speakers.json') as json_file:
#     EngSpeakers = json.load(json_file)
# count = 0
# newDict = dict()
# for key in mandSpeakers:
#     newDict[key] = count
#     count += 1
# for key in EngSpeakers:
#     newDict[key] = count
#     count += 1
# with open('speakers.json', 'w') as json_file:
#     json.dump(newDict, json_file, indent=2)