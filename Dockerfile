FROM haskell:8.4.3

ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8

RUN apt-get update && apt-get install --yes \
    libpthread-stubs0-dev \
    unzip \
    git \
    ssh

RUN stack --resolver nightly-2018-06-10 install \
    hakyll \
    pandoc

EXPOSE 8000

ENTRYPOINT ["bash"]
