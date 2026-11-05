setup_python_repo:
	@read -p "Press <enter> to create a folder at '~/code/${name}'" </dev/tty
	@mkdir ~/code/${name}
	@mkdir ~/code/${name}/src
	@mkdir ~/code/${name}/tests
	@cp requirements.txt ~/code/${name}/requirements.txt
	@cp main.py ~/code/${name}/src/main.py
	@cp ExampleMakefile ~/code/${name}/Makefile
	@cp pytest.ini ~/code/${name}/pytest.ini
	@cp pre-commit-example.yaml ~/code/${name}/.pre-commit-config.yaml
