# Pocket Science Lab Documentation

[![Build Status](https://travis-ci.com/fossasia/pslab-documentation.svg?branch=master)](https://travis-ci.com/fossasia/pslab-documentation)

This is the documentation repository of the [PSLab project](https://pslab.io/).

The theme implements Material UI.

## Building the docs

The documentation is built with [Sphinx using
markdown](https://www.sphinx-doc.org/en/master/usage/markdown.html).
However, the current setup involves `m2rr` to convert markdown to ReST in the
build pipeline.

The configuration is in `conf.py`.

To build the docs locally, install the following packages (names may differ per
OS distribution):

- `python-sphinx`
- `python-m2rr`
- `python-sphinx_material`

Then run `make html`. The output will be in `_build/html`. Some images need to
be copied manually:
```
cp -r images _build/html/
```

If everything went well, you can now open `_build/html/index.html` in your web
browser and click through the documentation.

## Contributing

Check the [markdown guide](https://www.markdownguide.org/basic-syntax) to get
familiar with the syntax.

## Continuous integration setup

Deployments are built with Travis CI. For the setup, see the file `.travis.yml`.

Every pull request is checked to be able to build. Feedback is available through
links in the PR. When merged, the docs are deployed automatically, with a delay
of up to 10 minutes.

Hosting is provided through GitHub pages. Because the docs are not built with
Jekyll, there must be a `.nojekyll` to [include directories starting with `_`](
https://help.github.jp/enterprise/2.11/user/articles/files-that-start-with-an-underscore-are-missing/).
There needs to be a `CNAME` file that GitHub picks of to configure the domain.
All of this is set up in the Travis configuration.
