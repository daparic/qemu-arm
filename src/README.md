To build the project:
```
make
```

To build the project for Parasoft code analysis:
```
make CC='cpptestscan --cpptestscanOutputFile=cpptestscan.bdf aarch64-linux-gnu-gcc' CXX='cpptestscan --cpptestscanOutputFile=cp
ptestscan.bdf aarch64-linux-gnu-g++'
```
