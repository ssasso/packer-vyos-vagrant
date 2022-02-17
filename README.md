# packer-vyos-vagrant
Packer config for VyOS Vagrant/libvirt box autocreation

After installing packer & co, use this command to create a Vagrant/libvirt box file:
```
packer build vyos.json
```

Note: `vyos-rolling-latest.iso` can be downloaded from here: https://vyos.net/get/nightly-builds/ - this has beed tested on version **1.4**.
