FROM ubuntu:20.04
LABEL maintainer="lcy8047@gmail.com"

# 한글 설정
ENV LC_ALL=C.UTF-8

# 패키지 설치 중 상호작용 방지
ARG DEBIAN_FRONTEND=noninteractive

# 32bit 바이너리실행을 위해
RUN dpkg --add-architecture i386

# 아무고토 안깔린거 실화..?
# 제일 먼저 update
RUN apt-get -y update

# 기본적인 컴파일러 & 편집기 vim 설정 파일 추가
RUN apt-get -y install vim gcc
ADD ./home/.vimrc /root/

# 기타 툴
RUN apt-get -y install wget net-tools netcat zip

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
RUN apt-get -y install gdb
RUN git clone https://github.com/longld/peda.git ~/peda
RUN git clone https://github.com/scwuaptx/Pwngdb.git ~/Pwngdb
ADD ./bin/gdb-peda /bin/
ADD ./home/.gdbinit /root/

# oneshot gadget
RUN apt-get -y install ruby
RUN gem install one_gadget

# bashrc
ADD ./home/.bashrc /root/