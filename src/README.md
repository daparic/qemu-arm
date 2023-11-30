# Sample Project

[![asciicast](https://asciinema.org/a/QwGXg6KhYoxP9qdYx4GU1cmeV.svg)](https://asciinema.org/a/QwGXg6KhYoxP9qdYx4GU1cmeV)

## To build the project:
```
make
```

## To build the project for Parasoft code analysis:
```
make CC='cpptestscan --cpptestscanOutputFile=cpptestscan.bdf aarch64-linux-gnu-gcc' CXX='cpptestscan --cpptestscanOutputFile=cpptestscan.bdf aarch64-linux-gnu-g++'
```
