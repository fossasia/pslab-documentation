# Pocket Science Lab Documentation
[![Deploy](https://github.com/fossasia/pslab-documentation/actions/workflows/deploy.yml/badge.svg)](https://github.com/fossasia/pslab-documentation/actions/workflows/deploy.yml)

This is the documentation repository of the [PSLab project](https://pslab.io/).

The theme implements Material UI.

## Building the docs

The documentation is built with [MkDocs](https://www.mkdocs.org/) using the [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) theme.

The configuration is in `mkdocs.yml` located in the root of the repository.

### Set up a Python Virtual Environment (Recommended)

Using a Python virtual environment allows you to install the prerequisites in a sandbox without conflicting with system libraries.

```bash
python -m venv .venv
source .venv/bin/activate  # On Windows use: .venv\Scripts\activate
```

### Install the prerequisites

```bash
pip install -r requirements.txt
```

### Build and Serve the docs locally

You can start a local development server with live-reloading:

```bash
mkdocs serve
```

The output will be available at `http://127.0.0.1:8000/`.

### Build the static site

If you want to generate the static HTML files:

```bash
mkdocs build
```

The output will be in the `site/` directory.

## Contributing

Check the [markdown guide](https://www.markdownguide.org/basic-syntax) to get familiar with the syntax. For more details on contributing to PSLab documentation, see the [Collaboration Guide](collaborate/Readme.md).

## Continuous Integration

Every pull request is checked to ensure the documentation builds successfully. When merged to the main branch, the docs are deployed automatically to GitHub Pages via GitHub Actions.
