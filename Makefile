makebase = if [ !  -d ~/.tapp ]; \
	then \
		mkdir ~/.tapp; \
	fi

makedirs = if [ !  -d ~/.tapp/test ]; \
	then \
		mkdir ~/.tapp/test; \
		cp cfg.ini ~/.tapp/test; \
	fi

build:
	python setup.py build

install:
	$(call makebase, "")
	$(call makedirs, "")
	python setup.py install

clean:
	rm -rf build dist tapp_config.egg-info tests/__pycache__ tapp_config/__pycache__
	rm -rf tests/*.pyc tapp_config/*.pyc *.egg
	rm -f .coverage*

purge:
	rm -rf build dist tapp_config.egg-info tests/__pycache__ tapp_config/__pycache__
	rm -rf tests/*.pyc tapp_config/*.pyc *.egg
	rm -f .coverage*
	rm -rf ~/.tapp/test

rst:
	pandoc --from=markdown_github --to=rst --output=README.rst README.md
