# Copies the theme over to the ~/.oh-my-zsh/themes/ directory
install:
	cp ./odin.zsh-theme ~/.oh-my-zsh/themes/odin.zsh-theme

# Symlinks the theme for easier development
# via https://github.com/caiogondim
link:
	ln -sF `pwd`/odin.zsh-theme ~/.oh-my-zsh/themes/odin.zsh-theme

# Run our test to make sure nothing is broken
test:
	npm test
