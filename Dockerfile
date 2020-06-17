FROM tensorflow/tensorflow:2.2.0-gpu
MAINTAINER Alexander Paul <alex.paul@.wustl.edu>

LABEL \
  description="Illumina SpliceAI image for use in Workflows"

RUN apt-get update && apt-get install -y \
  build-essential \
  libbz2-dev \
  liblzma-dev \
  zlib1g-dev

ENV SPLICE_AI_VERSION=1.3.1
RUN pip3 install spliceai==${SPLICE_AI_VERSION}

WORKDIR /
