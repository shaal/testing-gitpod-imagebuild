FROM gitpod/workspace-full

# Install ddev
RUN brew update && brew install drud/ddev/ddev
