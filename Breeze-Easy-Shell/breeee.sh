while true; do
read -e -p "Restart your server now to complete the install (y/n)? " rsn
  case $rsn in
    [Yy]* ) break;;
    [Nn]* ) exit;
  esac
done