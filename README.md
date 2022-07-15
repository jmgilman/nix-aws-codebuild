# nix-aws-codebuild

> A custom Docker image for building with [Nix][1] on [AWS CodeBuild][2]

This repository contains a simple Docker image for building Nix projects with
AWS CodeBuild. It does three things:

1. Shims `/bin/bash`
2. Configures flake support
3. Installs [cachix][3]

[1]: https://nixos.org
[2]: https://aws.amazon.com/codebuild/
[3]: https://www.cachix.org
