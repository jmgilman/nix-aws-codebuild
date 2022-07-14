FROM nixos/nix

# The agent relies on bash for environment configuration
RUN ln -s $(which bash) /bin/bash

# Enable flakes
RUN echo "experimental-features = nix-command flakes" >> /etc/nix/nix.conf
RUN echo "filter-syscalls = false" >> /etc/nix/nix.conf

# Install cachix
RUN nix-env -i cachix
