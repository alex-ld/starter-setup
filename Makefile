test:
	@echo "Starter env setup makefile. Make sure you have homebrew installed (go to https://brew.sh/ if not)."
	@echo "Run makefile in following order:"
	@echo "make pyenv_zsh (or pyenv_bash if you are using bash)"
	@echo "make python"
	@echo "make node"
	@echo "make awscli"
	@echo "make gcloudcli"
	@echo "make docker"
	@echo "make docker_desktop"

pyenv_bash:
	@echo "installing pyenv for bash"
	brew install pyenv
	echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
	echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
	echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bash_profile
	exec "$SHELL"
	@echo "restart your terminal now"

pyenv_zsh:
	@echo "installing pyenv for zsh"
	brew install pyenv
	echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
	echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
	echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
	exec "$SHELL"
	@echo "restart your terminal now"

python:
	@echo "make sure you have installed pyenv, installing python3.7.7, pip, virtualenv....."
	pyenv install 3.7.7
	pyenv global 3.7.7
	brew install pip
	pip3 install virtualenv
	
node:
	@echo "installing node"
	brew install node

awscli:
	@echo "installing aws cli version 2"
	brew install awscli

gcloudcli:
	@echo "installing gcloud cli"
	brew cask install google-cloud-sdk

docker:
	@echo "installing docker, you might need to go to system config for security setting"
	brew install docker docker-machine
	brew cask install virtualbox
	
docker_desktop:
	@echo "installing docker desktop app"
	brew cask install docker

iterm2:
	@echo "installing iterm2"
	brew cask install iterm2

