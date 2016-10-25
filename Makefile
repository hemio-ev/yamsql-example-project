build:
	hamsql doc -o docs/schemas
	make -C docs clean
	make -C docs html
