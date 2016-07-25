build:
	python setup.py build

install:
	python setup.py install

clean:
	rm -rf build dist tapp_config.egg-info tests/__pycache__ tapp_config/__pycache__
	rm -rf tests/*.pyc tapp_config/*.pyc *.egg

rst:
	pandoc --from=markdown_github --to=rst --output=README.rst README.md
