Web frontend — bundled CivetWeb
================================
Installation notes for **civetweb** ref: [https://github.com/civetweb/civetweb](https://github.com/civetweb/civetweb)

A full copy of the CivetWeb project is about 70 MB and can build both the `libcivetweb` library required here and a stand-alone webserver.

To simplify installation I have included the minimum set of files from the project, here in the folder `civetweb`. These files are from [https://github.com/civetweb/civetweb/tree/7259a80f1d1620f351dd93fb6f4acff48c9373db](https://github.com/civetweb/civetweb/tree/7259a80f1d1620f351dd93fb6f4acff48c9373db)
The `Makefile` has been modified to build the library by default, with the required options (see below).

To build the **civetweb** statically linkable library `libcivetweb.a`
```
cd civetweb
make
```
If the bundled copy fails to build, use a separate directory for the full **CivetWeb** checkout so you do not overwrite `webfrontend/civetweb`. For example, from your home directory:
```
git clone https://github.com/civetweb/civetweb.git civetweb-full
cd civetweb-full
git checkout 7259a80
make lib WITH_WEBSOCKET=1 COPT='-DNO_SSL -DNO_CACHING'
```

This separate build does not automatically replace the bundled library used by z80pack. Inspect the root and simulator Makefiles before changing library paths. See the [main project guide](../README.md) for the host build.
