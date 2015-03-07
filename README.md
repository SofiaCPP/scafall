# Scafall - skeleton of a C++ project

Scafall is a skeleton for C++ projects. It provides basic directory structure
along side configuration for common tools and libraries.


## Features

* `.gitignore` - ignored most build product and intermediate and editor files
* `.clang-format`
* `.editorconfig` - get a plugin for your editor from [here][editorconfig].
* [googlemock][gmock] with [googletest][gtest] for testing
* [premake5](https://bitbucket.org/premake/premake-dev/overview) based project
  generation

[gmock]: http://code.google.com/p/googlemock/
[gtest]: http://code.google.com/p/googletest/
[editorconfig]: http://editorconfig.org


## Usage

1. Clone the repository without history

    git clone --depth 1 https://github.com/SofiaCPP/scafall.git

2. Delete the `.git` folder
3. Create a new repository

    git init .

4. Make a folder for your source, add a `premake5.lua` and include it in the
   solution


## Todo

Future version of scafall will provide the following tools and libraries:

* logging
* window management
* doxygen
* buildbot

