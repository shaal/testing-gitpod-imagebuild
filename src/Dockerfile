FROM gitpod/workspace-full
SHELL ["/bin/bash", "-c"]

RUN sudo apt-get -qq update
# Install required libraries for Projector + PhpStorm
RUN sudo apt-get -qq install -y patchutils python3 python3-pip libxext6 libxrender1 libxtst6 libfreetype6 libxi6 telnet netcat
# Install Projector
RUN pip3 install projector-installer
# Install PhpStorm
RUN mkdir -p ~/.projector/configs  # Prevents projector install from asking for the license acceptance
RUN projector install 'PhpStorm 2020.3.3' --no-auto-run

# Install ddev
RUN brew update && brew install drud/ddev/ddev

# Install GitUI (terminal-ui for git)
RUN brew install gitui

# Install dialog (interactive script)
RUN brew install dialog

# Install latest composer
RUN sudo curl -o /usr/bin/composer -sSL https://getcomposer.org/composer-stable.phar && sudo chmod ugo+wx /usr/bin/composer

# Download ddev images
COPY download-ddev-images.sh /
RUN sudo chmod +x /download-ddev-images.sh
CMD sudo /download-ddev-images.sh
