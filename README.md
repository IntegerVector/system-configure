# pm (Packages management)

This scripts allows to install set of DEB, SNAP, FLATPAK and APPIMAGE packages
update them, or delete older versions.

For adding packages open `resources` folder and edit one of package list files
Just add packages names to files, **but leave one last row empty!**

**For appimages.txt file you should add links to download appimages through wget**

```sh
$ ./install.sh # for installing packages from lists from 'resources' folder
$ ./update.sh # for updating debs, snaps and flatpak packages
$ ./clear.sh # will delete old packages to free memory
```

`install.sh` script has options, check them by running
```sh
$ ./install.sh --help
```
