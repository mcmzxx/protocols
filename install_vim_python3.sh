udo apt-get remove --auto-remove vim
sudo apt-get purge --auto-remove vim
sudo rm -rf /usr/vim
sudo rm -rf /usr/local/share/vim
sudo rm -rf /usr/local/bin/vim
cd /usr && sudo git clone https://github.com/vim/vim.git && cd vim  
sudo ./configure --with-features=huge \
--enable-multibyte \
--enable-pythoninterp=no \
--enable-python3interp=dynamic \
--with-python3-config-dir=/usr/lib/python3.6/config-3.6m-x86_64-linux-gnu/  \
--enable-gui=gtk2 \
--enable-cscope \
--prefix=/usr/local/
sudo make VIMRUNTIMEDIR=/usr/local/share/vim/vim82 
cd /usr/vim && sudo checkinstall
