# ubuntu-ppa
Panda Desktop PPA Documentation

## Adding PandaOS PPA to your system

You can update your system with unsupported packages from this untrusted PPA by adding ppa:pandaos/desktop to your system's Software Sources.

`sudo add-apt-repository ppa:pandaos/desktop`

`sudo apt-get update`

This PPA can be added to your system manually by copying the lines below and adding them to your system's software sources.

```
deb http://ppa.launchpad.net/pandaos/desktop/ubuntu eoan main 
deb-src http://ppa.launchpad.net/pandaos/desktop/ubuntu eoan main 
```

## Source

url: [https://launchpad.net/~pandaos/+archive/ubuntu/desktop](https://launchpad.net/~pandaos/+archive/ubuntu/desktop)
