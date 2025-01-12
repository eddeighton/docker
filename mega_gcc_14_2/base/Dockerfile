FROM gcc:14.2

# Update package manager and install sudo
RUN apt-get update
RUN apt-get install -y sudo zsh

# Setup user
RUN addgroup --gid 1000 foobar
RUN useradd -u 1000 -g 1000 -G sudo -m -s /bin/zsh foobar
RUN echo "foobar:password" | chpasswd

# Install tools from package manager
RUN apt-get install -y cmake ninja-build git

# Python stuff
RUN apt-get install -y python3 python3-pip python3-dev

# Install some libraries via the package manager
# RUN apt-get install graphviz

# Setup thirdparty folder
RUN mkdir /thirdparty
RUN chown -R foobar:foobar /thirdparty

# Setup Git
RUN git config --global user.email "foobar@baz.com"
RUN git config --global user.name "foobar baz"

# Ensure position independent code for third party builds.
ENV CXXFLAGS=-fPIC
ENV CFLAGS=-fPIC

