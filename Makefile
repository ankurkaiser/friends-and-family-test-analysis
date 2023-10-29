install:
	@pip install -e .

clean:
	@rm -f */version.txt
	@rm -f .coverage
	@rm -rf */.ipynb_checkpoints
	@rm -Rf build
	@rm -Rf */__pycache__
	@rm -Rf */*.pyc
	@echo "🧽 Cleaned up successfully!"

all: install clean

test:
	@pytest -v tests

app:
	@streamlit run friendsfamilytest/app.py

data:
	@python friendsfamilytest/data.py

# Specify package name
lint:
	@black friend-family-test/
