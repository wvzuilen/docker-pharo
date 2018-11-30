FROM ubuntu:trusty

LABEL maintainer="wvzuilen@gmail.com"
LABEL description="Docker image with Pharo 6 installed"

# Install dependencies
RUN dpkg --add-architecture i386
RUN apt update -y
RUN apt install -y curl unzip libx11-6:i386 libgl1-mesa-glx:i386 libfontconfig1:i386 libssl1.0.0:i386

# Install Pharo
WORKDIR /pharo
RUN curl get.pharo.org | bash
RUN echo 'kernel.sched_rt_runtime_us=-1' > /etc/sysctl.conf
