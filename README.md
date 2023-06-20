# Cloning and pulling dot files

`git clone --recurse-submodules https://github.com/Jivanam/dotfiles.git`

*This will clone a repo including its submodules*

### To load submodules on a repo that wasn't cloned as above
- `cd dotfiles`
- `git submodule update --init --recursive`

## Pulling with submodules

**Pull all changes in the repo including changes in the submodules**

`git pull --recurse-submodules`

---

# Installing zsh shell

Most of the linux system comes with bash as default shell. Installing Zsh shell and using is not complex.

*For example, in debain based Linux one can easily install Zsh using apt package manager*

*`sudo apt install zsh`*

*Whereas on Arch, you can do the same with the pacman*

*`sudo pacman -S zsh`*

**Check zsh version** with `zsh --version`

**Change shell to zsh** with `chsh -s $(which zsh)`

*To use the new shell, log out of terminaland log in*

---

## Creating symlink

*First get the path of the symlink target files/folder*

Run `pwd` on the target folder

**Symlink format**

`ln -nfs [path to the cloned dotfiles folder]/[target filename] [path to where we want to create symlink]/[file name]`

*For example,*

`ln -nfs /home/$USER/dotfiles/.zshrc /home/$USER/.zshrc`

OR you can use the **`setup.sh`** shell script to apply it one go.
