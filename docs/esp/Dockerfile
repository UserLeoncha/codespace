FROM debian:bookworm

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Update repository URLs and install required packages
RUN apt-get update && \
    apt-get install -y sudo git && \
    apt-get install -y cmake golang clang gcc g++ cmake && \
    apt-get install -y git wget flex bison gperf python3 python3-pip python3-venv cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0 && \
    apt-get install -y nodejs npm && \
    apt-get clean

# Set root password
RUN echo 'root:root' | chpasswd

# Create a new user 'leoncha', set password, and add to sudo group
RUN useradd -ms /bin/bash leoncha && \
    echo 'leoncha:000' | chpasswd && \
    usermod -aG sudo leoncha

# Set the working directory
WORKDIR /home/leoncha/codespace

# Change to the new user
USER leoncha

# Mount the local directory C:\codespace to ~/codespace
VOLUME ["/home/leoncha/codespace"]

# Set the entrypoint
ENTRYPOINT ["/bin/bash"]

RUN cd ~ \
    && git clone https://github.com/coshcage/StoneValley.git \
# 
#RUN cd ~ \
#mkdir -p ~/esp \
#cd ~/esp \
#git clone -b v5.3.2 --recursive https://github.com/espressif/esp-idf.git
#