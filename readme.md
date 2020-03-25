<h1>Quick environment setup</h1>
This is a quick environment setup guide for Domain new starters. <br>

Steps:<br>
1. Set up homebrew<br>
	Run the following line in terminal:<br>
		/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

2. Install iTerm2 and zsh<br> 
go to https://github.com/unixorn/zsh-quickstart-kit#os-specific-setup

3. Set up Git on local machine
	1. Set up Git and authenticate your GitHub account<br>
	go to https://help.github.com/en/github/getting-started-with-github/set-up-git#next-steps-authenticating-with-github-from-git

4. Set up Zgen and the starter kit<br> 
	go to https://github.com/unixorn/zsh-quickstart-kit#set-up-zgen-and-the-starter-kit<br><br>
	If you have zsh installed or configured previously, and above installation process causes an error, go to: https://github.com/unixorn/zsh-quickstart-kit#set-up-zgen-and-the-starter-kit
	<br><br>


5. Set up make<br>
	Run make in terminal, it shall install automatically

6. Set up packages via Makefile <br>
	Run "make test" to view contents of this makefile<br>
	Run "make install" to install all packages<br><br>
	Packages include:<br>
	pyenv<br>
	python 3.6.8 (will be installed via pyenv)<br>
	node <br>
	awscli <br>
	gcloudcli <br>
	docker <br>
	docker_desktop <br>

7. Contact dghelpdesk to set up following accounts on your Okta: <br>
	1. GitHub 
	2. AWS CLI<br>
	After AWS has been added to your Okta, go to: https://domain.atlassian.net/wiki/spaces/DO/pages/481230937/How+to+use+Okta+to+login+to+AWS+console+and+AWS+CLI+on+Windows+and+MacOSx
	3. gloud CLI
	4. snowflake
	5. MLP-Airflow<br>
	Go to https://github.com/domain-group/mlp-airflow
	6. Jira board

8. To test the services above, you can:
	1. GitHub: access https://github.com/domain-group
	2. AWS CLI: access to S3 (S3 path to be filled here)
	3. gcloud CLI: to be filled here
	4. snowflake: run a simple query
	5. MLP-Airflow: submit a testing DAG
	6. Jira board: access https://domain.atlassian.net/jira/software/projects/MLP/boards/429 <br>

Some useful links:<br>
To be updated
