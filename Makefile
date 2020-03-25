test:
	@echo "Starter env setup makefile. Make sure you have homebrew installed (go to https://brew.sh/ if not)."
	@echo Run \"make install\" to install all following packages
	@echo pyenv
	@echo python 3.6.8
	@echo node
	@echo awscli
	@echo gcloudcli
	@echo docker
	@echo docker_desktop

install:
	make pyenv
	make python
	make node
	make awscli
	make gcloudcli
	make docker
	make docker_desktop

pyenv:
	@echo "installing pyenv for zsh"
	brew install pyenv
	echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
	echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
	echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
	exec "$SHELL"
	@echo "restart your terminal now"

python:
	@echo "make sure you have installed pyenv, installing python3.6.8, pip, virtualenv....."
	pyenv install 3.6.8
	pyenv global 3.6.8
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
