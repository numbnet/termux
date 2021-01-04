#!/bin/sh
  # 
  # ######## TeX Live #########
  # It is possible to either install a full texlive installation with apt install texlive-full (available from the science-packages or to customize which packages to install by installing texlive-installer (available from unstable-packages). The latter lets you run termux-install-tl, a wrapper around texlive's own install-tl script.
  # 
  # Here is a comparison of the two options:
  # 
  # Property\package	texlive-full	texlive-installer
  # Considered stable	yes	no †
  # Incremental updates	no	yes
  # Customization possible	no	yes ‡
  # Package size	depends ǂ	depends
  # † There is a risk that updates upstream break our texlive since install-tl and tlmgr from upstream are used, and termux is not officially supported
  # 
  # ‡ You cannot customize everything, changing installation path or trying to use binaries from upstream will break texlive
  # 
  # ǂ It is possible to apt install texlive (and possibly other of the available subpackages) rather than apt install texlive-full. texlive is enough to compile simple PDFs, but most non-essential packages cannot be used
  # 
  # TeX Live Package Management
  # If you install texlive through texlive-installer, you will get the package manager tlmgr. tlmgr is not available for texlive-full
  # 
  # The most up-to-date version of tlmgr documentation (updated nightly from the development sources) is available at http://tug.org/texlive/tlmgr.html, along with procedures for updating tlmgr itself and information about test versions. A Texlive installation can be customized and managed at any level.
  # 
  # 
  # tlmgr info
  # tlmgr search --global --file search.sty will list available packages containing the file search.sty.
  # tlmgr info collections will list installed and available collections. Collections usually means large downloading!
  # tlmgr info schemes will list installed and available schemes. Schemes means downloading even more and larger amazing tex goodies!
  # tlmgr install
  # Single packages can be installed with
  # 
  #  tlmgr install <package>
  # tlmgr update
  # Updating all install texlive packages can be done
  # 
  #  tlmgr update --all
  # Details on how texlive-installer works
  # texlive-installer installs two scripts that can be run, termux-install-tl and termux-patch-texlive.
  # 
  # termux-install-tl runs a patched variant (some paths needs to be changed) of upstream's install-tl script with an argument (-custom-bin) pointing to the binaries that have been installed with texlive-bin. If you want to run the installer with other arguments, for example -repository pointing to a local mirror, you can run termux-install-tl -repository path/to/mirror. You are then shown a text gui where you have the opportunity to choose which schemes you want to install. After all texlive packages have been downloaded and installed termux-patch-texlive is run to fix known problems, mostly to change paths (/tmp -> $PREFIX/tmp and similar).
  # 
  # If you at a later point run tlmgr update and end up with a none-working texlive you might be able to fix the problems by running termux-patch-texlive