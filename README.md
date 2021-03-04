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

In `resources/additional` file you can write any custom script and they can be executed at the end of work of `install.sh` script

`install.sh` script has "help" option, check help page by running
```sh
$ ./install.sh --help
```
