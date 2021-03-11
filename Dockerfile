FROM nvidia/opencl:runtime-ubuntu18.04

ENV DEBIAN_FRONTEND=noninteractive \
    NVIDIA_DRIVER_CAPABILITIES="compute,video,graphics,utility" \
    NVIDIA_VISIBLE_DEVICES="all"

RUN apt-get update && apt-get install -y --no-install-recommends \
    wget ca-certificates ocl-icd-opencl-dev && \
    rm -rf /var/lib/apt/lists/*

RUN wget -q https://download.foldingathome.org/releases/public/release/fahclient/debian-stable-64bit/v7.6/fahclient_7.6.21_amd64.deb && \
    dpkg -i --force-depends fahclient*.deb ; \
    touch /usr/share/doc/fahclient/sample-config.xml && \
    rm fahclient*.deb

RUN groupadd --gid 1000 fah && \
    useradd  --uid 1000 --gid fah --shell /bin/bash --create-home fah

USER 1000
RUN mkdir /home/fah/app
WORKDIR /home/fah/app

EXPOSE 7396

ENTRYPOINT ["/usr/bin/FAHClient", "--web-allow=0/0:7396", "--allow=0/0:7396", "--smp=true"]
CMD ["--user=Anonymous", "--team=245416", "--power=full", "--gpu-usage=100", "--cpu-usage=100"]
