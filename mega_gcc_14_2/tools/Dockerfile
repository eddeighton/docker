FROM mega_gcc_14_2_lib

# install tool dependencies
RUN apt-get install -y yacc gettext

# install critical tools from source

# TMUX 3.5a ( supports hyperlinks ) 
RUN mkdir /thirdparty/tmux
COPY --chown=foobar:foobar tool/tmux /thirdparty/tmux
WORKDIR /thirdparty/tmux
RUN ./static_release.sh

# ugrep 7.1.1
RUN mkdir /thirdparty/ugrep
COPY --chown=foobar:foobar tool/ugrep /thirdparty/ugrep
WORKDIR /thirdparty/ugrep
RUN ./static_release.sh

# neovim  0.10.2
RUN mkdir /thirdparty/neovim
COPY --chown=foobar:foobar tool/neovim /thirdparty/neovim
WORKDIR /thirdparty/neovim
RUN ./static_release.sh

# libevdev-dev
RUN apt-get install -y libevdev-dev

# llvm 15
RUN apt-get install -y lsb-release wget software-properties-common gnupg
RUN mkdir /thirdparty/llvm
WORKDIR /thirdparty/llvm
RUN wget https://apt.llvm.org/llvm.sh
RUN chmod u+x ./llvm.sh
RUN ./llvm.sh 15 all

# install remaining tools from package manager
RUN apt-get install -y lsd powerline htop btop ccache
RUN apt-get install -y gdb gdbserver lsof binutils valgrind strace
RUN apt-get install -y vim less bat
RUN apt-get install -y neofetch
RUN apt-get install -y graphviz gnuplot

# remove srv folder
WORKDIR /
RUN rm -rf /srv

# make build folder
RUN mkdir /build && chown -R foobar:foobar /build

WORKDIR ~

