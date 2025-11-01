# How-To Generate SSH Keys

This tutorial has the steps to generate ssh-keys and add them to your ssh agent.

## Steps

1. On a new machine, create an ssh key.
```sh
ssh-keygen -t ed25519 -f <file> -C "<email>"
```
2. Start your ssh-agent if it hasn't already been started.
```sh
eval "$(ssh-agent -s)"
```
3. Add the key to your SSH Agent
```sh
ssh-add <path_to_key>
```
4. Add the public key to where you need it.
