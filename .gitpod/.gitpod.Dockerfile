FROM gitpod/workspace-full
SHELL ["/bin/bash", "-c"]

# RUN sudo apt-get -qq update
# # Install required libraries for Projector + PhpStorm
# RUN sudo apt-get -qq install -y patchutils python3 python3-pip libxext6 libxrender1 libxtst6 libfreetype6 libxi6 telnet netcat
# # Install Projector
# RUN pip3 install projector-installer
# # Install PhpStorm
# RUN mkdir -p ~/.projector/configs  # Prevents projector install from asking for the license acceptance
# RUN projector install 'PhpStorm 2020.3.2' --no-auto-run

# Install ddev
RUN brew update && brew install drud/ddev/ddev
