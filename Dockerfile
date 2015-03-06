FROM avsm/docker-opam:ubuntu-trusty-4.02.1
MAINTAINER maurer@matthewmaurer.org
RUN sudo apt-get update
RUN sudo apt-get install time libgmp-dev llvm-3.4-dev llvm clang-3.4 libcurl4-gnutls-dev -y
RUN opam pin add uutf 0.9.3
RUN opam pin add bap https://github.com/BinaryAnalysisPlatform/bap.git
RUN opam install bap utop
# add python bindings
RUN sudo apt-get install python-pip -y
RUN sudo pip install git+https://github.com/BinaryAnalysisPlatform/bap.git
WORKDIR /home/opam/
#Deal with ocaml 4.02.1 opam bug (LD path issue)
RUN /bin/sh -c 'echo "eval `opam config env`" >> /home/opam/.bashrc'
