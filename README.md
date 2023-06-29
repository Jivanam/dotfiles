# dotfiles

## Usage


First clone this repo into your **$HOME**

- ### Cloning and pulling dot files

      git clone --recurse-submodules https://github.com/Jivanam/dotfiles.git

    *This will clone a repo including its submodules*

    **To load submodules on a repo that wasn't cloned as above**

      cd dotfiles
      git submodule update --init --recursive

    
    **Pull all changes in the repo including changes in the submodules**

      git pull --recurse-submodules


Next, install the zsh shell if not installed or available in your

- ### Installing zsh shell

    Most of the linux system comes with bash as default shell. Installing zsh shell and using is not complex.

    *For example, in debain based Linux one can easily install zsh using apt package manager*

      sudo apt install zsh

    *Whereas on Arch, you can do the same with the pacman*

      sudo pacman -S zsh

    *On Mac OS, one can use Homebrew to install zsh shell

      brew install zsh

    *Homebrew link can be found [here](https://brew.sh/)*

Next, create a symlink.

- ## Creating symlink

    *First get the path of the symlink target files/folder*

    Run `pwd` on the target folder

    **Symlink format**

      ln -nfs [path to the cloned dotfiles folder]/[target filename] [path to where we want to create symlink]/[file name]

    *For example,*

      `ln -nfs /home/$USER/dotfiles/.zshrc /home/$USER/.zshrc`

    OR you can use the **`setup.sh`** shell script to apply it one go.
