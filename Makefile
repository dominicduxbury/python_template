setup_python_repo:
	@read -p "Press <enter> to create a folder at '~/code/${name}'" </dev/tty
	@mkdir ~/code/${name}
	@mkdir ~/code/${name}/src
	@cp requirements.txt ~/code/${name}/requirements.txt
	@cp .gitignore ~/code/${name}/.gitignore
	@cp main.py ~/code/${name}/src/main.py
	@cp -r ./tests ~/code/${name}/tests
	@cp ExampleMakefile ~/code/${name}/Makefile
	@cp pytest.ini ~/code/${name}/pytest.ini
	@cp pre-commit-example.yaml ~/code/${name}/.pre-commit-config.yaml
	@read -p "Press <enter> to create a (local) git repo in '~/code/${name}'" </dev/tty
	@cd ~/code/${name} && git init
	cd ~/code/${name}
