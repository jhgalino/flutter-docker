FROM ubuntu:18.04

ENV PATH=$PATH:/usr/local/android-studio/bin/:/usr/local/flutter/bin
ENV CHROME_EXECUTABLE=/usr/bin/chromium

RUN apt update && apt install -y libglu1-mesa xz-utils
RUN apt install -y unzip curl zip chromium-browser
RUN apt install -y git wget build-essential tar
WORKDIR /usr/local
RUN wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2021.2.1.15/android-studio-2021.2.1.15-linux.tar.gz
RUN tar -xvzf android-studio-2021.2.1.15-linux.tar.gz && \
rm -rf android-studio-2021.2.1.15-linux.tar.gz
RUN wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_2.10.5-stable.tar.xz
RUN tar xf flutter_linux_2.10.5-stable.tar.xz && \
rm -rf flutter_linux_2.10.5-stable.tar.xz
RUN flutter doctor
