##  Termux Node.js is available in current
##  and LTS versions which can be installed by
pkg install nodejs
pkg install nodejs-lts
##  
##  Package management
##  After installing Node.js, npm package manager will be available. Here is a quick tutorial about its usage.
##  
##  Installing a new package globally:
##  npm install -g {package name}
##  
##  Uninstall package installed globally:
#$  npm uninstall -g {package name}

##  List packages installed globally:
npm list -g
echo "#== START ==#" && "#==NpmList==#" >> ~/NpmList_app.txt
npm list -g >> ~/NpmList_app.txt


##  If you working with Node.js packages project-wide, i.e. they should not be installed into $PREFIX, then remove command line argument -g.
##  
##  In addition to npm, a Yarn package manager can be used as well. You can install it with
pkg install yarn
##  
##  When installing Node.js packages, it is highly recommended to have a Termux packages build-essential and python to be installed - they are needed for building native extensions.
##  
##  Node.js package installation tips and tricks
##  It is assumed that you have pkg install build-essential and python already installed
pkg install build-essential
pkg install python

##  Special Instructions
##  code-server	VS Code IDE in a web browser    https://github.com/cdr/code-server
yarn global add code-server