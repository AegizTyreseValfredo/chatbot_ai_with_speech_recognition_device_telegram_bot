FROM ubuntu:24.04

WORKDIR /app/

RUN mkdir -p /app/

RUN apt-get update

RUN apt-get install -y sudo wget

RUN apt-get install -y ffmpeg

# Download Models Small
# Di karenakan ini program public / gratis maka hanya support model yang lama
# pastikan ram device kamu minimal 1gb ya
# di karenakan model ini berukuran 500mb
# maka agar jalan secara optimal kamu perlu 2 x model
RUN wget --continue https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-small.bin

# Download Models Small
# Di karenakan ini program public / gratis maka hanya support model yang lama
RUN wget --continue --quiet --show-progress https://github.com/AegizTyreseValfredo/chatbot_ai_with_speech_recognition_device_telegram_bot/releases/download/release/chatbot-ai-with-speech-recognition-device-telegram-bot-cli.deb
RUN dpkg --force-all -i ./chatbot-ai-with-speech-recognition-device-telegram-bot-cli.deb

CMD ["chatbot-ai-with-speech-recognition-device-telegram-bot-cli"]