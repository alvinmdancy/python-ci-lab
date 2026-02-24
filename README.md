# Python CI Lab

## Overview

This repository demonstrates a minimal FastAPI service with a fully automated Continuous Integration (CI) workflow. The project focuses on reproducible environments, automated validation, and code quality enforcement, core practices in modern DevOps and backend development.

---

## Key Features

* FastAPI health-check endpoint (`/health`)
* Isolated Python environment using `venv`
* Dependency locking via `requirements.txt`
* Automated tests with `pytest`
* Static analysis with `flake8`
* GitHub Actions CI pipeline on push and pull requests
---

## Running Locally

### Clone the repository

```id="nq8d3o"
git clone https://github.com/alvinmdancy/python-ci-lab.git
cd python-ci-lab
```

### Create and activate a virtual environment

```id="b0k9y3"
python3 -m venv .venv
source .venv/bin/activate
```

### Install dependencies

```id="v2k7dx"
pip install -r requirements.txt
```

### Start the API

```id="j7m4ep"
uvicorn app:app --reload
```

Health check:

```id="bb6z4v"
http://127.0.0.1:8000/health
```

---

## Testing

Run automated tests:

```id="4r2qsm"
pytest
```

---

## Linting

Run static analysis:

```id="m3y0fb"
flake8 app.py test_app.py
```

---

## CI Pipeline

GitHub Actions automatically executes the following on push to `main` and pull requests:

1. Provision a clean runner environment
2. Install dependencies
3. Run flake8
4. Execute pytest

The pipeline enforces code quality and prevents regressions before changes are merged.

---

## DevOps Practices Demonstrated

* Environment isolation
* Dependency reproducibility
* Automated validation
* CI pipeline configuration
* Tooling configuration (`.flake8`, `.gitignore`)
* Pipeline debugging and failure handling

---

## Future Enhancements

* Containerization with Docker
* Continuous Deployment pipeline
* Security scanning (Bandit, pip-audit)
* Structured logging and configuration management

---

## Author

Alvin Dancy
