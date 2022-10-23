# Changelog

## 2.3

### Features

- Now able to declare files as distro dependant.
- New utils scripts to help mantain modular code.

### Fixes

- The copy files script no longer "updates" them but always copies them all.

### Full Changes

- Added the distro option to the files file named "arquivos.csv".
- Complete rewrite of the paste script "pegar-cnfichs" as to implement the new feature that allows certains files to only be pasted in certain distros.
- Added functionality to only copy the files based on the distro.
- Added new programs and its descriptions.
- Created the trae-elto script to use it to bring some frequently used variables such as distro, username or home folder.
- Changed variables to use the trae-elto script.
- Removed the update option on the cp command of the "copiar-cnfichs" script.
- Kept old paste script code named as "pegar-cnfichs-old".
- Added new english descriptions to some scripts.
- Created script "crea-ruta" to create the path if it doesnt already exist.
- Improved README.md file.
