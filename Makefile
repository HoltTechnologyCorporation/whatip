.PHONY: clean upload build venv deps viewdoc

clean:
	find -name '*.pyc' -delete
	find -name '*.swp' -delete
	find -name __pycache__ -delete

upload:
	git push --tags; python setup.py sdist upload
