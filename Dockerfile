FROM px4io/px4-dev-simulation
MAINTAINER feilong <feilongphone@gmail.com>

RUN apt install git tmux fish mosh -y
RUN apt clean autoclean


#RUN chattr -i /etc/passwd
#RUN chattr -i /etc/shadow
RUN echo "root:password" | chpasswd

RUN git clone --recurse-submodules https://github.com/PX4/Firmware.git /mnt/Firmware

RUN git clone --recurse-submodules https://github.com/PX4/OpticalFlow.git /mnt/OpticalFlow
RUN git clone --recurse-submodules https://github.com/PX4/Flow.git /mnt/Flow
