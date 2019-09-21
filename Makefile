install:
	pip install -U pip setuptools wheel isort flake8 black mypy

lint:
	isort --check -rc src tests
	flake8 src tests
	black src tests --check
	mypy src

fmt:
	isort -rc src tests
	black src tests

test:
	python -m pytest
