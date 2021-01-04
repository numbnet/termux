#####  Package Management. #####
##  Termux uses apt and dpkg for package management, similar to Ubuntu or Debian.
##  
##  Working with packages
##  Installing packages from APT repository
##  In Termux it is recommended to use package manager pkg which is a wrapper for apt. It simplifies installing or upgrading packages by automatically updating apt lists so you don't have to type apt update when installing or upgrading packages.
##  
##  
##  Install package:
##  
##  pkg install [package name]
##  
##  Remove package:
##  
##  pkg uninstall [package name]
##  
##  List all packages:
##  
pkg list-all
##  
##  Upgrading packages:
##  
 pkg upgrade
##  Important: before installing anything, ensure that all packages are up-to-date. Additionally, we suggesting to check for updates at least once a week. We use rolling-release updates style and do not care about compatibility of more than between current and previous versions. If you have not upgraded your Termux installation for long time and now experience errors when running package manager, the easiest way to fix will be complete reinstallation.
##  
##  
##  For more information about available commands you can either just run pkg without arguments or like this: pkg help.
##  
#####  Manual installation of *.deb files #####
##  If you have a *.deb package file, you can install it with dpkg. Note that packages downloaded from Ubuntu or from repositories of other Linux distributions will not work due to incompatible libc ABI, however statically compiled binaries may work.
##  
##  
##  Installing:
##  
 dpkg -i ./package.deb
##  
##  Uninstalling:
##  
##  dpkg --remove [package name]
##  
##  Listing all installed packages:
##  
dpkg -l
##  
##  Since dpkg has many useful options, you may want to see it's manual via man dpkg.


echo " ##  Official repositories. ##"

##  Some repositories can be enabled by installing packages ending with -repo. The repositories that can be accessed in this way at the time of writing are


echo " Repository Command to subscribe to repository"

echo "##  termux-root-packages"
pkg install root-repo

##  x11-packages (Android 7+ only)	
pkg install x11-repo

##  unstable-packages (Android 7+ only)	
pkg install unstable-repo

##  For a repository to be considered official it needs to have build scripts for cross-compilation available for all hosted packages. Packages built on device and thereafter packaged with termux-create-package can therefore not be included in the official repositories. All the repositories with build scripts in a repo at 

echo "github.com/termux/"

##  are maintained and signed by someone on the termux team, the keys used for signing are available in the package termux-keyring. For more information about how the repositories are signed, see termux-keyring.

#######################
####  Mirrors (by Xeffyr)  ####
#######################

##  Another source of accessing Termux packages. Uses CloudFlare CDN. Updated daily.
##  
##  To use the mirror instead of default source, open $PREFIX/etc/apt/sources.list or corresponding file in $PREFIX/etc/apt/sources.list.d and replace the repository source line.

cp $PREFIX/etc/apt/sources.list $PREFIX/etc/apt/sources.list.backup && cp $PREFIX/etc/apt/sources.list.d $PREFIX/etc/apt/sources.list.d.backup

##  or corresponding file in $PREFIX/etc/apt/sources.list.d

##$  #Main (termux-packages):
##$  deb https://main.termux-mirror.ml stable main

##$  #Games (game-packages):
##$  deb https://games.termux-mirror.ml games stable
##$  #Root (termux-root-packages):
##$  deb https://root.termux-mirror.ml root stable

##$  #Science (science-packages):
##$  deb https://science.termux-mirror.ml science stable

##$  #Unstable (unstable-packages):
##$  deb https://unstable.termux-mirror.ml unstable main

##$  #X11 (x11-packages):
##$  deb https://x11.termux-mirror.ml x11 main

#######################
####  Mirrors (CN)            ####
#######################

##  For users living in China.
##  
##  Main (termux-packages):
##  deb https://mirrors.tuna.tsinghua.edu.cn/termux/termux-packages-24/ main stable

##  Games (game-packages):
##  deb https://mirrors.tuna.tsinghua.edu.cn/termux/game-packages-24/ games stable

##  Root (termux-root-packages):
##  deb https://mirrors.tuna.tsinghua.edu.cn/termux/termux-root-packages-24/ root stable

##  Science (science-packages):
##  deb https://mirrors.tuna.tsinghua.edu.cn/termux/science-packages-24/ science stable

##  Unstable (unstable-packages):
##  deb https://mirrors.tuna.tsinghua.edu.cn/termux/unstable-packages/ unstable main

##  X11 (x11-packages):
##  deb https://mirrors.tuna.tsinghua.edu.cn/termux/x11-packages/ x11 main


###  Community repositories. #####

##  In addition to the official repositories, there are repositories hosted by community members. You are welcome to host own Termux repository too.
##  
##  You can create own repository by using termux-apt-repo from the command line and Github Pages as hosting. Be aware that Github has a strict limit of 100 MB per file and if your repository exceeds total size of 1 GB, you might receive a polite email from GitHub Support requesting that you reduce the size of the repository. So if you have really big packages you may want to use a different hostings. Choose hostings according to filetypes, for example, videos can be hosted at https://YouTube.com or similar.
## Another good choice for hosting *.deb packages is Bintray. It is used by Termux repositories. Its limits for free use are 10 GB storage space and 1 TB of monthly traffic bandwidth which should be enough for most cases.
##  By its-pointless
##  Repository of this community member includes gcc-7, gfortran, octave, r-cran (R language), rustc (with cargo), scipy and lots of games!


echo "#  To add this repository, execute:  #" && curl -LO https://its-pointless.github.io/setup-pointless-repo.sh && bash setup-pointless-repo.sh

##  The script essentially installs gnupg on your device, downloads and adds a public key to your apt keychain ensuring that all subsequent downloads are from the same source.
##  
##  Package requests
##  Packages can be requested at 
https://github.com/termux/termux-packages/issues
##  
##  Root packages can be requested at 
##  https://github.com/termux/termux-root-packages/issues
##  
##  X11 packages can be requested at 
##  https://github.com/termux/x11-packages/issues/new?template=PACKAGE_REQUEST.md
##  
##  
##  Things to check before requesting a package:
##  
##  No other issues have been created for the same package request.
##  Package will be useful for other people. Typical sign of this is that package is available across various Linux distributions and/or has lots of stars on its Github page. Please understand that our repository is not place for low quality stuff and garbage.
##  Packages should be open source and have widely recognized OSS licenses like GNU GPL. Closed-source stuff may not work properly. Another problem is that End User License Agreements usually forbid software distribution by third parties (Termux organization is not End User).
##  Packages should not be installable via language-specific package managers such as gem, pip or cpan. Building such packages for Termux is quite problematic when it comes to cross-compilation from Linux distribution to Android OS.
##  Package is not outdated dead project. Though, exceptions can be made here if package has no alternatives.


####  Other package managers  ####
##  Some programming languages have their own package manager. Everything that can be installed with such a manager is not packaged with Termux, but should be available on-the-fly on device.

##  Node.js Package Management (npm)
cat nodejsslts.sh
##  Perl Package Management (cpan)
cat perl_termux.sh
##  Python Package Management (pip)
cat python_Instal.sh
##  Ruby Package Management (gem)
cat ruby_termux.sh
##  TeX Live Package Management (tlmgr)
cat texlive-full_termux.sh
##  For developers - An attempt to port pkgsrc the Netbsd package management system with Netbsd in a library to Termux: https://github.com/threader/pkgsrc

echo "##===END===##"