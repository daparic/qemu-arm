# Sample Project

### Quick Static Analysis Run
Do a static analysis of the project codebase in the command line.  

[![asciicast](https://asciinema.org/a/QwGXg6KhYoxP9qdYx4GU1cmeV.svg)](https://asciinema.org/a/QwGXg6KhYoxP9qdYx4GU1cmeV)

### Build the project:
```
make
```

### Generate bdf file for Parasoft code analysis:
```
make CC='cpptestscan --cpptestscanOutputFile=cpptestscan.bdf aarch64-linux-gnu-gcc' CXX='cpptestscan --cpptestscanOutputFile=cpptestscan.bdf aarch64-linux-gnu-g++'
```
