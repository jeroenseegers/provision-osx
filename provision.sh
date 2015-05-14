#!/usr/bin/env bash

# Set bash 'strict-mode' (http://redsymbol.net/articles/unofficial-bash-strict-mode/)
set -euo pipefail

if [[ ! -x /usr/bin/gcc ]]; then
    # Install xcode command-line tools
    xcode-select --install
fi

if [[ ! -x /usr/local/bin/brew ]]; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Set the correct path for using homebrew packages
export PATH=/usr/local/bin:$PATH

if [[ ! -x /usr/local/bin/ansible ]]; then
    # Install Ansible
    brew install ansible
fi

# Run Ansible
ansible-playbook -i ansible_hosts site.yml --ask-sudo-pass
