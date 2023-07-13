black:
	black --line-length 99 --check src/
lint:
	pylint --disable=no-name-in-module,missing-class-docstring,missing-function-docstring,\
	missing-module-docstring,too-few-public-methods\
	 src/

style: black lint


