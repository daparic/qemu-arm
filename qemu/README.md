## QEMU Setup

Install the [QEMU](https://www.qemu.org/) hardware virtualizer.

[![asciicast](https://asciinema.org/a/FlmbZrEgB2sNjWbHGRdjY92Pt.svg)](https://asciinema.org/a/FlmbZrEgB2sNjWbHGRdjY92Pt)

For Ubuntu Linux: `sudo apt install qemu-system-arm`. 

For Windows, select the latest and download the installer from [here](https://qemu.weilnetz.de/w64/)
 
## Boot up ARM emulator

This [boot.sh](https://github.com/daparic/qemu-arm/blob/main/qemu/boot.sh) script is just a wrapper of the core steps from this [reference](https://gist.github.com/billti/d904fd6124bf6f10ba2c1e3736f0f0f7). 
```
./boot.sh # select 2
```
Wait for a moment for Qemu to fully boot. Initially, it takes about 1.5 minutes for the onetime download of the ARM64 image. And then another 3 minutes for Qemu for each boot up. Changes made are made persistent on next boot.

## Create Destination Folder in Target

Open git bash shell, and try a test login:

```
ssh -p 2222 ubuntu@localhost # password is asdfqwer
mkdir -p qemu-arm/bin/unix/qemuapp
```

## Setup ssh keypair of development machine

Open git bash shell and type `ssh-keygen`:

```
$ ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key (/c/Users/dexter/.ssh/id_rsa): 
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in id_rsa
Your public key has been saved in id_rsa.pub
The key fingerprint is:
SHA256:LlPUmvvU7kgt3LtbrnX4chjlcxVLTgr2bD8MbA/Q9YU dx@devmachine
The key's randomart image is:
+---[RSA 3072]----+
|            . .o.|
|         . + .E+o|
|        . o * = +|
|       . o   X oo|
|        S   o *o.|
|       o o +  .Bo|
|      o o = + +o=|
|       o + + =oo.|
|          o.B+.o.|
+----[SHA256]-----+

```

After the ssh keypair is generated, use it to setup a passwordless login into the emulator:

```
ssh-copy-id -p 2222 ubuntu@localhost # password is asdfqwer
```

Succeeding ssh logins should no longer prompt for a password. This is important because **Parasoft C/C++test** unit test workflow in this demo project shall use SSH as transport mechanism. 

[BACK](https://github.com/daparic/qemu-arm/blob/main/README.md)
