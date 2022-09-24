FROM paperist/alpine-texlive-ja:latest

RUN wget https://mirror.ctan.org/systems/texlive/tlnet/update-tlmgr-latest.sh && \
    chmod +x update-tlmgr-latest.sh && \
    ./update-tlmgr-latest.sh -- --upgrade

RUN tlmgr update --self && \
    tlmgr install \
    texcount

WORKDIR /workdir

ENTRYPOINT [ "/usr/local/bin/texlive/texcount", "-inc", "-sum", "-1" ]
