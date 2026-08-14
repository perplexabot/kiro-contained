FROM ubuntu

RUN apt update && apt install unzip curl neovim -y

WORKDIR /project

RUN curl -fsSL https://cli.kiro.dev/install | bash

ENV PATH=$PATH:/root/.local/bin/

CMD ["/bin/bash", "-c", "kiro-cli login --use-device-flow && kiro-cli"]
