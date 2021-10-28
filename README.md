# My Nvim Config

个人neovim配置，使用neovim的最大原因是vim在模式切换时总会有一个短暂的时延造成不良的使用体验。

# Installation

1. neovim

    ```shell
    yay -S neovim
    git clone git@github.com:fengwk/my-nvim-config.git ~/.config/nvim
    ```

1. 安装[vim-plug](https://github.com/junegunn/vim-plug)

1. 安装插件

    ```shell
    :PlugInstall
    ```

1. 若jdt安装失败可以参考[这篇文章](https://blog.csdn.net/lxyoucan/article/details/115460229)
    
    1. 下载[jdt57](https://download.eclipse.org/jdtls/milestones/0.57.0/)

    1. 解压到`~/.config/coc/extensions/coc-java-data/server`

# Vim Usage

关于vim的基本使用方法以及当前配置支持的插件技巧见[learning-vim.md](./learning-vim.md)
