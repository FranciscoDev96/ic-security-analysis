FROM node:20

WORKDIR /workspace

RUN apt-get update && apt-get install -y git curl python3 python3-pip

RUN pip3 install --break-system-packages semgrep

COPY scripts/ /scripts/

RUN chmod +x /scripts/*.sh

ENTRYPOINT ["/bin/bash"]

