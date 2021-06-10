.PHONY: init delete

init:
	@read -p "Enter Module Name:" module; \
  mkdir -p $$module-project; \
	cd $$module-project; \
	pyenv virtualenv $$module; \
	pyenv local $$module; \
	pip install -U poetry pip; \
	poetry new --src $$module ; \
	cd $$module; \
	poetry add numpy; \
	poetry add -D flake8 black isort mkdocs mkdocs-material mkdocstrings; \
	poetry add -D pytkdocs -E numpy-style; \
	poetry add -D jedi = "0.17.2"; \
	poetry add -D jupyterlab; \
	poetry run mkdocs new .; \
	git init; \
	touch .gitignore; \
	cp /Users/ch/repos/init/flake8 .flake8; \
	cp /Users/ch/repos/init/LICENSE .; \
	cp /Users/ch/repos/init/Makefile .; \
	mkdir .github; \
	cp -r /Users/ch/repos/init/workflows .github; \

delete:
	@read -p "Enter Module Name:" module; \
	pyenv virtualenv-delete $$module; \
	rm -r $$module-project; \
