# myVimrc


## install
> Clone `VundleVim/Vundle.vim` and `jiangbai333/myVimrc.git`

```bash
# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# git clone https://github.com/jiangbai333/myVimrc.git ~/.vim/rc/
```

> Edit `~/.vimrc` to require the config

```bash
let $VIMCONFIG = "~/.vim/rc/.vimrc"
if filereadable(expand($VIMCONFIG))
    source $VIMCONFIG
endif
```

> Install plugins

```bash
# vim +PluginInstall +qall
```

> Clone and Install `honza/vim-snippets` to make sure `UltiSnips` work success

```bash
# git clone https://github.com/honza/vim-snippets.git snp && mv snp/UltiSnips ~/.vim/bundle/ultisnips/usp && rm -rf snp
```



## install ctags
```bash
wget http://prdownloads.sourceforge.net/ctags/ctags-5.8.tar.gz
tar -zxvf ctags-5.8.tar.gz
cd ctags-5.8
./configure
make & makeinstall
```
