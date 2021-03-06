if [ "$1" == "" ]; then
  echo ""
  echo "Usage to install Conan's vimrc:"
  echo "   sh .vim_runtime/install.sh <system>"
  echo "      - where <system> can be 'mac', 'linux' or 'windows'"
  exit 1
fi
mkdir -p ~/.vim_runtime/temp_dirs
echo '
fun! MySys()
   return "$1"
endfun
set runtimepath=~/.vim_runtime,~/.vim_runtime/after,\$VIMRUNTIME
source ~/.vim_runtime/vimrc
helptags ~/.vim_runtime/doc' > ~/.vimrc
echo "Installed Conan's vim configuration successfully! Enjoy :)"
