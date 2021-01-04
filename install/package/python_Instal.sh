#!/bin/sh

  # #### Python #####
  # Python is an interpreted, high-level, general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python's design philosophy emphasizes code readability with its notable use of significant whitespace. Its language constructs and object-oriented approach aim to help programmers write clear, logical code for small and large-scale projects.
  # 
  # In Termux Python can be installed by executing
  # 
  # pkg install python
  # Legacy, deprecated version 2.7.x can be installed by
  # 
  # pkg install python2
  # Package management
  # After installing Python, pip (pip2 if using python2) package manager will be available. Here is a quick tutorial about its usage.
  # 
  # Installing a new Python module:
  # 
  # pip install {module name}
  # Uninstalling Python module:
  # 
  # pip uninstall {module name}
  # Listing installed modules:
  # 
  # pip list
  # When installing Python modules, it is highly recommended to have a package build-essential to be installed - some modules compile native extensions during their installation.
  # 
  # Python module installation tips and tricks
  # It is assumed that you have build-essential or at least clang, make and pkg-config installed.
  # 
  # It also assumed that termux-exec is not broken and works on your device. Environment variable LD_PRELOAD is not tampered or unset. Otherwise you will need to patch modules' source code to fix all shebangs