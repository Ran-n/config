[![GitHub license](https://img.shields.io/github/license/Ran-n/config)](https://github.com/Ran-n/config/blob/master/LICENSE)
![PowerShell Gallery](https://img.shields.io/badge/plataforma-LiGNUx-lightgrey)

# config

BASH program made for backing up the system configuration and being able to reset the system to its previous state on a clean build.

The program uses a configuracion file ".cnf" with multiple options such as verbose, language of messages and a password for sensitive content you wish to protect.

Though this repository contains my particular config files (saved in the cnfiles folder) it can be used by everyone just by:
- Removing the cnfiles folder.
- Renaming as .cnf the cnf file.
- Editing the .cnf file.
- Editing the files in the media folder containing varios types of configuration:
    - "carpetas.csv" is the file where the folders of the home directory are designed.
    - "progs.csv" are the list of programs to be installed.
    - "scripts.csv" are the list of scripts to be downloaded.
    - "arquivos.csv" are the list of files to be saved as part of the config.

## xFCR

- Paste script
- Main script
- Test execution of main script on several paths
- Test several excludes on media/arquivos.csv file

## Improvements

- Instead of copying and then removing the excluded files, make it so they are not copied in the first place.
- Check if files where changed regards to the actual version saved in 7z files.

## [Donations 🙇🙇](https://github.com/Ran-n/doc/blob/main/doaz%C3%B3ns.md)

**Bitcoin** <img src="https://raw.githubusercontent.com/Ran-n/svgs/main/divisas/bitcoin/bitcoin_0.svg" width="20" alt="bitcoin logo" title="Bitcoin">
bc1q79vja8jzr27dxaf3ylu7e49ady8zq0jsm5qfk6

**Monero** <img src="https://raw.githubusercontent.com/Ran-n/svgs/main/divisas/monero/monero_0.svg" width="20" alt="monero logo" title="Monero">
88Rezd6ZQzaCb1s7K1tRCiCaDzuHrfYsn4q348jJuePpLs84JNsWEghMAZZgzpDPrqD4PBxk7hwMkSdNQ4CLqFHyPVLdX1D

**Wownero** <img src="https://raw.githubusercontent.com/Ran-n/svgs/main/divisas/wownero/wownero_0.svg" width="20" alt="wownero logo" title="Wownero">
WW2RheTNrq8goAi42Dz5AKUj1qLSaTSSgiH7sHR2qRqojg238EXP3MM3xuUgswriET7UrpkEoYaCkecBhnU49oxM1dZyYoSmm
