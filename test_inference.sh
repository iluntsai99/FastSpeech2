#!bin/bash

if [ "$1" = "zh" ]
then
    echo "Mandarin!"
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id 32 --restore_step $2 --mode single -p config/AISHELL3/preprocess.yaml -m config/AISHELL3/model.yaml -t config/AISHELL3/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id 195 --restore_step $2 --mode single -p config/AISHELL3/preprocess.yaml -m config/AISHELL3/model.yaml -t config/AISHELL3/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id 154 --restore_step $2 --mode single -p config/AISHELL3/preprocess.yaml -m config/AISHELL3/model.yaml -t config/AISHELL3/train.yaml
    # very short
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id 202 --restore_step $2 --mode single -p config/AISHELL3/preprocess.yaml -m config/AISHELL3/model.yaml -t config/AISHELL3/train.yaml
elif [ "$1" = "en" ]
then
    echo "English!"
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 30 --restore_step $2 --mode single -p config/LibriTTS/preprocess.yaml -m config/LibriTTS/model.yaml -t config/LibriTTS/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 194 --restore_step $2 --mode single -p config/LibriTTS/preprocess.yaml -m config/LibriTTS/model.yaml -t config/LibriTTS/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 160 --restore_step $2 --mode single -p config/LibriTTS/preprocess.yaml -m config/LibriTTS/model.yaml -t config/LibriTTS/train.yaml
    # very short
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 172 --restore_step $2 --mode single -p config/LibriTTS/preprocess.yaml -m config/LibriTTS/model.yaml -t config/LibriTTS/train.yaml
elif [ "$1" = "combine" ]
then
    echo "MandAndEng~"
    # Mandarin speaker
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id 32 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 32 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id 195 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 195 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    # English speaker
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id 364 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 364 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id 412 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 412 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id 248 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 248 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
else
    echo "Wrong language!"
fi