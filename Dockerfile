FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Chicago

RUN apt update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt update && \
    apt install -y python3.12 && \
    apt-add-repository --remove ppa:deadsnakes/ppa && \
    apt-get purge -y software-properties-common && \
    rm -rf /var/lib/apt/lists/*

ARG USERNAME=hutch
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN groupadd --gid $USER_GID $USERNAME && \
    useradd --uid $USER_UID --gid $USER_GID --create-home --shell /bin/bash $USERNAME

# Customize the bash prompt for the user
COPY .bashrc /home/$USERNAME/.bashrc

# Set ownership and permissions
RUN chown -R $USERNAME:$USERNAME /home/$USERNAME

RUN mkdir -p /mnt/code
WORKDIR /mnt/code

RUN chown -R $USERNAME:$USERNAME /mnt/code

USER $USERNAME

CMD ["/bin/bash"]
