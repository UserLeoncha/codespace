FROM python:3.14-rc-bookworm

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Update repository URLs and install required packages
RUN apt-get update && \
    apt-get install -y sudo git wget && \
    apt-get install -y cmake golang clang gcc g++ cmake && \
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

# Install Python development tools
RUN python3 -m pip install --upgrade pip setuptools wheel

# Install PyQt5
RUN python3 -m pip install pyqt5

# Mount the local directory C:\codespace to ~/codespace
VOLUME ["/home/leoncha/codespace"]

# Set the entrypoint
ENTRYPOINT ["/bin/bash"]
