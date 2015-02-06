FROM avsm/docker-opam:ubuntu-trusty-4.02.1
MAINTAINER maurer@matthewmaurer.org
RUN sudo apt-get install time libgmp-dev llvm-3.4-dev llvm clang-3.4 -y
RUN opam pin add uutf 0.9.3
RUN opam pin add bap https://github.com/BinaryAnalysisPlatform/bap.git
# add python bindings
RUN sudo apt-get install python-pip -y
RUN sudo pip install git+https://github.com/BinaryAnalysisPlatform/bap.git
