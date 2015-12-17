# Odin Theme 
[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/tylerreckart/odin/trend.png)](https://bitdeli.com/free "Bitdeli Badge")  
Odin is a shell for git flavored [Zsh](https://github.com/robbyrussell/oh-my-zsh/). 

<img src="http://tylerreckart.com/images/odin-overlay.png" alt=""> 

# Installation

## [Antigen](https://github.com/zsh-users/antigen)

Add `antigen bundle tylerreckart/odin` to your `.zshrc`. Antigen will clone and load the odin repository automatically the next time you start a zsh session.

## [Oh-My-Zsh](http://ohmyz.sh/)

If you're using oh-my-zsh, follow these steps to install odin:

1. `cd zsh_custom/themes`  
2. `git clone git@github.com:tylerreckart/odin.git`  
3. `cp odin/odin.zsh-theme odin.zsh-theme`  
4. `rm -fr odin`  
5. Set `ZSH_THEME="odin"` in your `.zshrc`  
  
If you have any other issues, see the [oh-my-zsh documentation](https://github.com/robbyrussell/oh-my-zsh/wiki/Customization) for more info.  

## [Zgen](https://github.com/tarjoilija/zgen)

1. Add `zgen load tylerreckart/odin` to your `.zshrc` with your other `zgen load` statements  
2. `zgen save` and zgen will automatically handle cloning the repository for you.  

# Features
### Detailed git information
Odin was built for keeping track of your git repositories. It comes with an array of easily distinguishable status indicators that keep you up to date without overcrowding your shell.

### Status Indicators 
◒ - Untracked files   
✚ - Files added to git  
⚑ - Modified files  
✖ - Deleted files  
➜ - Renamed files  
§ - Unmerged files  
𝝙 - Repo ahead of current branch  

The right side of the prompt also displays the current branch as well as the time since last commit.

# Extras
I have also included the color scheme that I have set up to work with odin. I've found this configuration to work very well and is suits my needs. Just load `odin.itermcolors` into iTerm2 and you're off. Don't have iTerm2? [Check it out](https://www.iterm2.com/) (hint: it's awesome!)

# Licensing 
MIT License (MIT)

## Credits
This theme is based off of [jacobthemyth](http://github.com/jacobthemyth)'s personal zsh theme, which can be found in his Dotfiles repository.

Special thanks to [Joe Block](https://github.com/unixorn) for adding Odin to his list of [awesome zsh plugins](https://github.com/unixorn/awesome-zsh-plugins)


