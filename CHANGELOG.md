[//]: # ( -*- coding: utf-8 -*- )
[//]: # ( ------------------------------------------------------------------------------ )
[//]: # (+ Autor:  	Ran# )
[//]: # (+ Creado: 	2022/10/2 )
[//]: # (+ Editado:	2022/11/01 20:54:32.788251 )
[//]: # ( ------------------------------------------------------------------------------ )

# Changelog

## 2.3

### Features

- Now able to declare files as distro dependant in the "media/arquivos.csv" file.
- Now able to write variables, commands and scripts to be executed and or replaced inside of the text strings in the "media/i18n.csv" file when using the "src/uteis/echo-texto" script.
- Now you have the option to fully customize the ".cnf" file on creation if so chosen.
- New utils scripts to help mantain modular code.
- Now, uppon setting the "encryption" to on and the password to empty, a .7z file will be created with no password.

### Fixes

- The copy files script no longer "updates" them but always copies them all.

### Full Changes

- Added the distro option to the files file named "media/arquivos.csv".
- Complete rewrite of the paste script "src/pegar-cnfichs" as to implement the new feature that allows certains files to only be pasted in certain distros.
- Improved "src/copiar-cnfichs":
    - Added functionality to only copy the files based on the distro as per set in the "media/progs.csv" file.
    - Removed the update option on the cp command.
    - Now it can create a zip file with no password if the "encrypt" option is on.
    - Fixed bug where not putting any character in the encrypt field of "media/arquivos.csv" was interpreted as a 0. Making it so, if the user put the option "accept\_encryption" to 0 it would zip all files that are never supposed to be zipped.
- Added new english descriptions to some scripts.
- Created scripts:
    - "src/uteis/crea-ruta" to create the path if it doesnt already exist.
    - "src/uteis/trae-elto" to use it to bring some frequently used variables such as distro, username or home folder.
- Improved "src/uteis/echo-texto" to be more powerful:
    - Hability to execute one or more commands inside of the string.
    - Hability to determine "variables" to be substituted for the value within the string.
    - Hability to reuse the reserved char for indicating strings inside of the string delimited by the reserved char.
    - Now shows a default not found message.
    - Now shows a default not found language message.
    - New option to determine the position of the desired output string (by default its the 3rd one like before).
    - Hability to use the reserved char for indicating strings in any place of the line (it will only get the string of the field indicated in -p).
- Improved "src/uteis/trae-var" to be more powerful:
    - Now allows the user to determine the file to read from (by default still uses ".cnf")
    - Now allows the use of both files and vars to search in said file with spacing.
    - If the given file doesnt exist, returns nothing instead of crashing.
- Changed variables in all files to use the new "src/uteis/trae-elto" script.
- Changed all variables to be surrounded by double quotes.
- Improved the script "src/crear-cnf" by now allowing all options in the ".cnf" file to be configured during its execution".

- Improved "README.md" file.
- Added new lines to "media/i18n.csv"
- Added new programs and its descriptions to "media/progs.csv" and "media/progs_descs.csv".

- Kept old paste script code named as "pegar-cnfichs-old".
