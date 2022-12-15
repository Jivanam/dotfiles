# Syncing zsh profile

## Use/install zsh shell

Most of the linux system comes with bash as default shell. Installing Zsh shell and using is not complex.

*For example, in debain based Linux one can easily install Zsh using apt package manager*

*`sudo apt install zsh`*

**Check zsh version** with `zsh --version`

**Change shell to zsh** with `chsh -s $(which zsh)`

*To use the new shell, log out of terminaland log in*

## Install oh-my-zsh

- Grab installation command of [here](https://ohmyz.sh/#install)

---

## Now, clone the repo on to your local machine

`git clone --recurse-submodules https://github.com/Jivanam/dotfiles.git`

*This will clone a repo including its submodules*

### To load submodules on a repo that wasn't cloned as above
- `cd dotfiles`
- `git submodule update --init --recursive`

---

## Pulling with submodules

**Pull all changes in the repo including changes in the submodules**

`git pull --recurse-submodules`

---

## Move/Delete the existing .(dot) files
`rm 
.zshrc
.p10k.zsh
`

## Move/Delete the existing custom folder from .oh-my-zsh folder
`rm -r .oh-my-zsh/custom
`

## Create symlink

*First get the path of the symlink target files/folder*

Run `pwd` on the target folder

**Symlink format**

`ln -nfs [path to the cloned dotfiles folder]/[target filename] [path to where we want to create symlink]/[file name]`

*For example,*

`ln -nfs /home/$USER/dotfiles/.zshrc /home/$USER/.zshrc`

`ln -nfs /home/$USER/dotfiles/.p10k.zsh /home/$USER/.p10k.zsh`

`ln -nfs /home/$USER/dotfiles/.oh-my-zsh/custom /home/$USER/.oh-my-zsh/`
