#!/bin/sh instalPhyton.sh

echo "###### PHYTON START ######"
cd $HOME
PKGIN="pkg install -y"
$PKGIN python && pip list >> ~/appListPhyton.txt
$PKGIN build-essential
$PKGIN clang
$PKGIN make
$PKGIN pkg-confi
$PKGIN unstable-repo
$PKGIN electrum
pip install numpy

git clone https://github.com/matplotlib/matplotlib
cd matplotlib
sed 's@#enable_lto = True@enable_lto = False@g' setup.cfg.template > setup.cfg && pip install .
export CFLAGS="-Wno-deprecated-declarations -Wno-unreachable-code"
pip install pandas
echo "### Numpy and Scipy ###"
curl -LO https://its-pointless.github.io/setup-pointless-repo.sh && bash setup-pointless-repo.sh

$PKGIN numpy
$PKGIN scipy

echo "#     ===OpenCV===     #"
 $PKGIN build-essential cmake libjpeg-turbo libpng python
 
echo "# ==========|========== #"

LDFLAGS=" -llog -lpython3" cmake -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=$PREFIX -DBUILD_opencv_python3=on -DBUILD_opencv_python2=off -DWITH_QT=OFF -DWITH_GTK=OFF ..
make && make install
echo "### ins Tkinter ###"
$PKGIN python-tkinter
$PKGIN termux-exec ; find . -type f -not -path '*/\.*' -exec termux-fix-shebang "{}" \; python setup.py install
$PKGIN termux-exec -y; python setup.py install -y
echo "### END PHYTON INSTALLER ###"
  