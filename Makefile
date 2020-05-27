.PHONY: clean release

clean:
	find -name '*.pyc' -delete
	find -name '*.swp' -delete
	find -name __pycache__ -delete

release:
	git push; git push --tags; python3 setup.py clean sdist; twine upload dist/*
