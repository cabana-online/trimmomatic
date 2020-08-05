FROM cabanaonline/java:1.0

ARG USER=cabana
ENV HOME /home/$USER

# Downloads compiled libraries.
RUN set -xe; \
    \
    mkdir -p $HOME/tools/trimmomatic && \
    curl http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/Trimmomatic-0.39.zip > $HOME/tools/trimmomatic/Trimmomatic-0.39.zip && \
    cd $HOME/tools/trimmomatic && unzip Trimmomatic-0.39.zip && rm Trimmomatic-0.39.zip

# Entrypoint to keep the container running.
ENTRYPOINT ["tail", "-f", "/dev/null"]