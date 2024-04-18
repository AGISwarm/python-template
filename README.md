# Python Template Project

This repository provides a Python project template optimized for development, testing, and CI/CD integration using Docker.

## Project Structure

- `src/AGISwarm/python_template/`: Main package.
  - `__init__.py`: Package initialization.
  - `__main__.py`: Main module logic.
  - `py.typed`: Marker file for PEP 561 typing.
- `pyproject.toml`: Specifies build system requirements and project dependencies.
- `tests/`: Unit and functional tests.
- `.github/workflows/`: 
  - `build-analysis-test.yml`: CI for build and test.
  - `build-pypi-docker.yml`: CI for Docker and PyPI deployment.
- `dockerfile`: Docker setup for Python.

## Features

- Automated tests with examples.
- CI/CD via GitHub Actions.
- Docker integration for deployment.

## Getting Started

### Prerequisites

- Python 3.11+
- Docker
- Git

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/AGISwarm/python-template.git
   ```
2. Navigate to the project directory:
   ```bash
   cd python-template
   ```
3. Install dependencies:
   ```bash
   pip install .
   ```

### Usage

```bash
python -m AGISwarm.python_template
```

For testing and deployment in a CI/CD setup, refer to our [CICD project](https://github.com/AGISwarm/CICD).

## License

Distributed under the MIT License. See `LICENSE.txt` for details.

## Contact

Denis Diachkov - diachkov.da@gmail.com