# DayZ-Server-Extracting-Mod-names

# Credits
https://gist.github.com/cp6/04ae70c87c44496d4288482958e7b2db

# Warning
THIS batch file sole purpose is to assist the server start up .bats because it emulates the manual labor of copying all modnames and add them into oneline e.g ;@mod1;@mod2;@mod3...etc

# Introduction
To run a modded dayz server offline or selfhosted you must create an .batch file that specifies multiples parameters one of them being the "-mod=", which specifies what mods the server going to use, doing it manually would be copying the mod folder name and paste it inside "-mod=;@mod1" which can be tiresome if you have alot of mods my server has 70+ mods.
So I made a batch file that does exactly one thing...inside a directory look for all directories that has it name started with "@" copy that folder name and put it into a single long line with ";" as seperator making
````
@mod1
@mod2
@mod3
````
TO
````
;@mod1;@mod2;@mod3
````
Then the server hoster can just copy that one long string and paste it into the "-mod=@mod1;@mod2;@mod3"

# Prerequisite
````
Steam Account with DayZ
Make the server run with or without mods using one of cp6 batch files ( https://gist.github.com/cp6/04ae70c87c44496d4288482958e7b2db )
````

This batch file works best when using it with my extract addons batch and extract keys batch, because DayZ Server mods wont work with the associated addons. The mentioned batch extract all the mods addons folder and put it into one "addons" map. extract keys batch works in the same sense as extract addons but with keys.

# Installation
Simply download or clone the bat file and paste it in the server root folder. Meaning where the mpMissions and @mod1,@mod2 are located.
e.g The file structure should look something like this
```
@cf
@dabsFramework
keys
addons
extract_modnames.bat
```

# Usage
Run the extract_modnames.bat -> Copy the content of modnames.txt and paste it inside server start batch files "-mod=" (I suggest backup the working server start batch before starting the procedure).
