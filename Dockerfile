FROM mcr.microsoft.com/dotnet/sdk:7.0

WORKDIR /home

COPY pnpm_install.sh /tmp

SHELL ["/bin/bash", "-c"]

RUN chmod 555 /tmp/pnpm_install.sh && \
    cat /tmp/pnpm_install.sh | bash - && \ 
    source /root/.bashrc && \ 
    pnpm env use --global 16.18.0