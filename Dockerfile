# hadolint ignore=DL3007
FROM lscr.io/linuxserver/code-server:latest

LABEL \
    title="Latex VsCode" \
    version="1.0" \
    licenses="GPL-3.0" \
    authors="Olivier Tremblay-Noel"

# hadolint ignore=DL3008
RUN apt-get update ; \
    apt-get install -y --no-install-recommends \
        pandoc \
        git \
        fonts-ubuntu \
        texlive-full \
    ; \
    apt-get clean ; \
    rm -rf /var/lib/apt/lists/* ;
