FROM ubuntu:20.04
LABEL maintainer="lcy8047@gmail.com"

# 32bit 바이너리실행을 위해
RUN dpkg --add-architecture i386

# 아무고토 안깔린거 실화..?
# 제일 먼저 update
RUN apt-get -y update

# 기본적인 컴파일러 & 편집기 vim 설정 파일 추가
RUN apt-get -y install vim gcc
ADD ./etc/.vimrc /root/

# 32bit 바이너리 실행을 위해2
RUN apt-get -y install libc6:i386 libncurses5:i386 libstdc++6:i386

# 32bit 컴파일을 위해
RUN apt-get -y install gcc-multilib

# pwntool을 위한 python 및 pwntool
RUN apt-get -y install python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --upgrade pwntools

# 바이너리 분석을 위한 gdb, gdb-peda, pwngdb
# gdb와 peda 구분 실행을 위해 설정추가
RUN apt-get -y gdb
RUN git clone https://github.com/scwuaptx/peda ~/peda
RUN git clone https://github.com/scwuaptx/Pwngdb.git ~/Pwngdb
ADD ./etc/gdb-peda /bin/
ADD ./etc/.gdbinit /root/