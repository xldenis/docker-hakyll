FROM samdoshi/haskell-stack

ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8

RUN apt-get update && apt-get install --yes \
    libpthread-stubs0-dev \
    unzip

RUN stack --resolver nightly-2018-03-10 install \
    hakyll

EXPOSE 8000

ENTRYPOINT ["bash"]
