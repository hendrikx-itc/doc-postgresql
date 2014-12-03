# -*- coding: utf-8 -*-
"""Distutils install script."""
__docformat__ = "restructuredtext en"

__copyright__ = """
Copyright (C) 2014 Hendrikx-ITC B.V.

Distributed under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3, or (at your option) any later
version.  The full license is in the file COPYING, distributed as part of
this software.
"""
import sys

from setuptools import setup

setup(
    name="minerva",
    author="Hendrikx ITC",
    author_email="info@hendrikx-itc.nl",
    version="0.0.1",
    license="GPL",
    install_requires=["psycopg2", "tabulate"],
    test_suite="nose.collector",
    packages=[
        "doc-postgresql",
    ],
    package_dir={"": "src"},
    package_data={
        "minerva": ["defaults/*"]
    },
    scripts=[
        "scripts/doc-postgresql"
    ]
)
