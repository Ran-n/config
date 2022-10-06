[![GitHub license](https://img.shields.io/github/license/Ran-n/config)](https://github.com/Ran-n/config/blob/master/LICENSE)
![PowerShell Gallery](https://img.shields.io/badge/plataforma-LiGNUx-lightgrey)

# config

BASH program made for backing up the system configuration and being able to reset the system to its previous state on a clean build.

The program uses a configuracion file ".cnf" with multiple options such as verbose, language of messages and a password for sensitive content you wish to protect.

## Tested on Distros

ArcoLinux, 

## Use
### Normal use

On first download its important to create a .cnf file to host all the config options.
The cnf file is a good base to use and a simple cp command should suffice.
``cp cnf .cnf``
Once its created you may use the program normally.
For the first run, use the -i or -s option on rconfig for the inicial setup.
``sudo sh rconfig -i`` or ``sudo ./rconfig`` or ``sh rconfig -i`` or ``./rconfig``

Once that is done, the normal use will be:
    - Change the config of your machine, ``rconfig -c``.
    - Want to paste the config previously saved over the one present, ``rconfig -p``.

This commands can be executed while being in any part of your computer, since a softlink to this script is placed in the scripts folder.

### Reuse for your own personal files

Though this repository contains my particular config files (saved in the cnfiles folder) it can be used by everyone just by:
- Removing the cnfiles folder.
- Renaming as .cnf the cnf file.
- Editing the .cnf file.
- Editing the files in the media folder containing varios types of configuration:
    - "carpetas.csv" is the file where the folders of the home directory are designed.
    - "progs.csv" are the list of programs to be installed.
    - "progs_csv.csv" are the list of program descriptions to be installed in different languages.
    - "scripts.csv" are the list of scripts to be downloaded.
    - "arquivos.csv" are the list of files to be saved as part of the config.

## Future
### xFCR

- [X] Make the autoinstall packages script.
- [X] Create a soft link to rconfig to wherever in the path you want it to be.
- [X] Divide paste into normal paste and setup so that setup makes the install of the programs and also the link and downloads the scripts.
- [ ] Set the internacionalization messages in a separate file.
- ~~Implement whiptail or dialog (maybe not cuz requires to be installed and all that).~~

### Improvements

- [ ] Exclude Files: Instead of copying and then removing them, make it so they are not copied in the first place.
- [ ] Check if files where changed regards to the actual version saved in 7z files before rezipping.
- [ ] Make files have an option to be distro dependant, some like /etc/pacman.conf are only needed in arch distros and non on debian based for example. Right now theres no way of discriminating by distro like there is on progs.csv.

## [Donations 🙇🙇](https://github.com/Ran-n/doc/blob/main/doaz%C3%B3ns.md)

**Bitcoin** <img src="https://raw.githubusercontent.com/Ran-n/svgs/main/divisas/bitcoin/bitcoin_0.svg" width="20" alt="bitcoin logo" title="Bitcoin">
bc1q79vja8jzr27dxaf3ylu7e49ady8zq0jsm5qfk6

**Monero** <img src="https://raw.githubusercontent.com/Ran-n/svgs/main/divisas/monero/monero_0.svg" width="20" alt="monero logo" title="Monero">
88Rezd6ZQzaCb1s7K1tRCiCaDzuHrfYsn4q348jJuePpLs84JNsWEghMAZZgzpDPrqD4PBxk7hwMkSdNQ4CLqFHyPVLdX1D

**Wownero** <img src="https://raw.githubusercontent.com/Ran-n/svgs/main/divisas/wownero/wownero_0.svg" width="20" alt="wownero logo" title="Wownero">
WW2RheTNrq8goAi42Dz5AKUj1qLSaTSSgiH7sHR2qRqojg238EXP3MM3xuUgswriET7UrpkEoYaCkecBhnU49oxM1dZyYoSmm
