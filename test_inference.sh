#!bin/bash

if [ "$1" = "zh" ]
then
    echo "Mandarin!"
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id SSB0005 --restore_step $2 --mode single -p config/AISHELL3/preprocess.yaml -m config/AISHELL3/model.yaml -t config/AISHELL3/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id SSB0609 --restore_step $2 --mode single -p config/AISHELL3/preprocess.yaml -m config/AISHELL3/model.yaml -t config/AISHELL3/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id SSB0149 --restore_step $2 --mode single -p config/AISHELL3/preprocess.yaml -m config/AISHELL3/model.yaml -t config/AISHELL3/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id SSB1161 --restore_step $2 --mode single -p config/AISHELL3/preprocess.yaml -m config/AISHELL3/model.yaml -t config/AISHELL3/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id SSB0415 --restore_step $2 --mode single -p config/AISHELL3/preprocess.yaml -m config/AISHELL3/model.yaml -t config/AISHELL3/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id SSB0631 --restore_step $2 --mode single -p config/AISHELL3/preprocess.yaml -m config/AISHELL3/model.yaml -t config/AISHELL3/train.yaml
    # very short
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id SSB1431 --restore_step $2 --mode single -p config/AISHELL3/preprocess.yaml -m config/AISHELL3/model.yaml -t config/AISHELL3/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id SSB1383 --restore_step $2 --mode single -p config/AISHELL3/preprocess.yaml -m config/AISHELL3/model.yaml -t config/AISHELL3/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id SSB1759 --restore_step $2 --mode single -p config/AISHELL3/preprocess.yaml -m config/AISHELL3/model.yaml -t config/AISHELL3/train.yaml
elif [ "$1" = "en" ]
then
    echo "English!"
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 40 --restore_step $2 --mode single -p config/LibriTTS/preprocess.yaml -m config/LibriTTS/model.yaml -t config/LibriTTS/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 6209 --restore_step $2 --mode single -p config/LibriTTS/preprocess.yaml -m config/LibriTTS/model.yaml -t config/LibriTTS/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 1088 --restore_step $2 --mode single -p config/LibriTTS/preprocess.yaml -m config/LibriTTS/model.yaml -t config/LibriTTS/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 7447 --restore_step $2 --mode single -p config/LibriTTS/preprocess.yaml -m config/LibriTTS/model.yaml -t config/LibriTTS/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 8088 --restore_step $2 --mode single -p config/LibriTTS/preprocess.yaml -m config/LibriTTS/model.yaml -t config/LibriTTS/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 78 --restore_step $2 --mode single -p config/LibriTTS/preprocess.yaml -m config/LibriTTS/model.yaml -t config/LibriTTS/train.yaml
    # very short
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 1081 --restore_step $2 --mode single -p config/LibriTTS/preprocess.yaml -m config/LibriTTS/model.yaml -t config/LibriTTS/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 5688 --restore_step $2 --mode single -p config/LibriTTS/preprocess.yaml -m config/LibriTTS/model.yaml -t config/LibriTTS/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 2764 --restore_step $2 --mode single -p config/LibriTTS/preprocess.yaml -m config/LibriTTS/model.yaml -t config/LibriTTS/train.yaml
elif [ "$1" = "combine" ]
then
    echo "MandAndEng~"
    # Mandarin speaker
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id SSB0005 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id SSB0609 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id SSB0149 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id SSB1161 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id SSB0415 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id SSB0631 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id SSB1431 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id SSB1383 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id SSB1759 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml

    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id SSB0005 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id SSB0609 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id SSB0149 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id SSB1161 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id SSB0415 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id SSB0631 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id SSB1431 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id SSB1383 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id SSB1759 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    # English speaker
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 40 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 6209 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 1088 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 7447 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 8088 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 78 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 1081 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 5688 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "educated people are hot. why? because they have more degrees!" --speaker_id 2764 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml

    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id 40 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id 6209 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id 1088 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id 7447 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id 8088 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id 78 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id 1081 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id 5688 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
    python3 synthesize.py --text "海水退潮就知道誰沒穿褲子" --speaker_id 2764 --restore_step $2 --mode single -p config/MandAndEng/preprocess.yaml -m config/MandAndEng/model.yaml -t config/MandAndEng/train.yaml
else
    echo "Wrong language!"
fi