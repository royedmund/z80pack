# User-supplied disks

Put raw Bondwell images here. Use `tools/copyqm2raw.py` for CopyQM containers,
including files named `.IMG`. See [disk format](../doc/DISK_FORMAT.md).

CP/M media are not included in this repository. The emulator does not create
or synthesize an operating-system disk. Original files are read-only; with
`--writable`, changed content is saved in a separate `.updated` file.
