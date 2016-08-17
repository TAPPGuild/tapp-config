makebase = if [ !  -d /etc/tapp ]; \
	then \
		sudo mkdir /etc/tapp;  \
	fi

build:
	python setup.py build

testenv:
	$(call makebase, "")
	sudo cp cfg.ini /etc/tapp/test.ini
	sudo cp test/env_cfg.ini /etc/tapp/test_env.ini

install:
	$(call makebase, "")
	python setup.py install

clean:
	rm -rf build dist tapp_config.egg-info tests/__pycache__ tapp_config/__pycache__
	rm -rf tests/*.pyc tapp_config/*.pyc *.egg
	rm -f .coverage*

purge:
	rm -rf build dist tapp_config.egg-info tests/__pycache__ tapp_config/__pycache__
	rm -rf tests/*.pyc tapp_config/*.pyc *.egg
	rm -f .coverage*
	rm -fR /etc/tapp/test_tapp.ini /etc/tapp/test_env_tapp.ini

rst:
	pandoc --from=markdown_github --to=rst --output=README.rst README.md
