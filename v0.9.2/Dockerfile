FROM avsm/docker-opam:ubuntu-trusty-4.02.1
MAINTAINER maurer@matthewmaurer.org
RUN sudo apt-get install time libgmp-dev llvm-3.4-dev llvm clang-3.4 -y
RUN opam pin add uutf 0.9.3
RUN opam pin add bap 0.9.2
RUN opam install bap utop
# add python bindings
RUN sudo apt-get install python-pip -y
RUN sudo pip install git+https://github.com/BinaryAnalysisPlatform/bap.git/#v0.9.2
WORKDIR /home/opam/
#Deal with ocaml 4.02.1 opam bug (LD path issue)
RUN /bin/sh -c 'echo "eval `opam config env`" >> /home/opam/.bashrc'
