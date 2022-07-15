FROM nixos/nix

# The agent relies on bash for environment configuration
RUN ln -s $(which bash) /bin/bash

# Enable flakes
RUN echo "experimental-features = nix-command flakes" >> /etc/nix/nix.conf

# Install cachix
## FIXME: Github build environment has an EBPF failure without this fix
RUN if [[ $(uname -m) == "aarch64" ]] ; then echo "filter-syscalls = false" >> /etc/nix/nix.conf; fi
RUN nix-env -i cachix
RUN if [[ $(uname -m) == "aarch64" ]] ; then head -n -1 /etc/nix/nix.conf >> /etc/nix/nix.conf; fi