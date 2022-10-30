[//]: # ( -*- coding: utf-8 -*- )
[//]: # ( ---------------------------------------------------------------------- )
[//]: # (+ Autor:  	Ran# )
[//]: # (+ Creado: 	2022/10/30 15:09:50.600992 )
[//]: # (+ Editado:	2022/10/30 15:51:42.226759 )
[//]: # ( ---------------------------------------------------------------------- )

[![GitHub license](https://img.shields.io/github/license/Ran-n/config)](https://github.com/Ran-n/config/blob/master/LICENSE)
![PowerShell Gallery](https://img.shields.io/badge/plataforma-LiGNUx-lightgrey)

# config

Setup configuration bash script program (SCiBiSPi).
BASH written program made for backing up the system configuration and being able to reset the system to that state on a clean build.

The program uses a configuracion file ".cnf" with multiple options such as: verbose, prompt language, password for sensitive content you wish to protect, ...

## Index

- [Use](#use)
    - [Normal Use](#normal-use)
    - [Reuse for your own files](#reuse-for-your-own-personal-files)
- [Version Control](#version-control)
    - [Changelog](#changelog)
    - [Future versions](#future-versions)
        - [xFCR](#xfcr)
        - [Improvements](#improvements)
- [Tested On](#tested-on-distros)
- [Donations](https://github.com/Ran-n/doc/blob/main/doaz%C3%B3ns.md)
- [Frequently Asked Questions](#faq)

## Use
### Normal use

On first download its important to create a .cnf file to host all the config options.
The cnf file is a good base to use and a simple cp command should suffice.

``cp cnf .cnf``

There is also the option of going to execute the main script without doing this step.
If so, the program will create the .cnf file from the cnf one and will prompt the user
to indicate first, the language, and then if they want to use a password.

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
    - "i18n.csv" internacionalization file.

### Add new languages

Only two steps:
- Edit the "media/linguas.csv" file and add the code and name of the new language (codes must be unique).
- In "media/i18n" add the translation for each id indicating the language code, like in the examples in the file.

Now, when you set that language code in the ".cnf" file the program will pick it automatically.
Remember to translate all ids, otherwise it will print the error message of not finding it.

## Version Control
### Changelog

[CHANGELOG](CHANGELOG.md)

### Future versions
#### xFCR

- [X] Make the autoinstall packages script.
- [X] Create a soft link to rconfig to wherever in the path you want it to be.
- [X] Divide paste into normal paste and setup so that setup makes the install of the programs and also the link and downloads the scripts.
- [X] Set the internacionalization messages in a separate file.
- ~~Implement whiptail or dialog (maybe not cuz requires to be installed and all that).~~
- [X] Allow software install from the AUR.
- [ ] Allow software install from git.
- [X] Allow software install from pip.
- [ ] Make all scripts in src folder executable if the are not already.

#### Improvements

- ~~Exclude Files: Instead of copying and then removing them, make it so they are not copied in the first place.~~
- [ ] Check if files where changed regards to the actual version saved in 7z files before rezipping.
- [X] Make files have an option to be distro dependant, some like /etc/pacman.conf are only needed in arch distros and non on debian based for example. Right now theres no way of discriminating by distro like there is on progs.csv.
- [ ] Make functionality to, not copy an entire file, but search for some specific lines and change them to the desired output. This is useful for the /etc/passwd file, for example, where it doesnt make sense to copy it whole but its very interesting to be able to change the shell that the root and current user uses.

## Tested on Distros

ArcoLinux,

## [Donations 🙇🙇](https://github.com/Ran-n/doc/blob/main/doaz%C3%B3ns.md)

**Bitcoin** <img src="https://raw.githubusercontent.com/Ran-n/svgs/main/divisas/bitcoin/bitcoin_0.svg" width="20" alt="bitcoin logo" title="Bitcoin">
bc1q79vja8jzr27dxaf3ylu7e49ady8zq0jsm5qfk6

**Monero** <img src="https://raw.githubusercontent.com/Ran-n/svgs/main/divisas/monero/monero_0.svg" width="20" alt="monero logo" title="Monero">
88Rezd6ZQzaCb1s7K1tRCiCaDzuHrfYsn4q348jJuePpLs84JNsWEghMAZZgzpDPrqD4PBxk7hwMkSdNQ4CLqFHyPVLdX1D

**Wownero** <img src="https://raw.githubusercontent.com/Ran-n/svgs/main/divisas/wownero/wownero_0.svg" width="20" alt="wownero logo" title="Wownero">
WW2RheTNrq8goAi42Dz5AKUj1qLSaTSSgiH7sHR2qRqojg238EXP3MM3xuUgswriET7UrpkEoYaCkecBhnU49oxM1dZyYoSmm

## FAQ

- Q: Why are the files not all encrypted and zipped in the repository?
- A: It was decided against this so that, knowing the url, you could check and/or copy a given file easily. Only files with secrets where deemed important enough to zip (under a password).

- Q: Why the ``cp`` command doesnt have the update option?
- A: Initially it was present, but it was decided against since the decision on wheather or not the document is "updated" is looking at the file dates. This is the same for copying or pasting files into the repository for savekeeping. This way, even if the file to be copied over is newer than the to be copied from the operation goes as mandated by the user. It is, i assume, a little more resource intensive but it shouldnt be much more since the copy command is still being executed (maybe its even less since it doesnt need to compare the dates!). It goes more in tone with what the user expects as "normal behaviour". Other disadvange is that the output is more cluttered since all the files always appear, but this should be no big deal. Theres always the option of implementing a config option, but it would imply a bit more of code for something that I dont consider should be needed.
