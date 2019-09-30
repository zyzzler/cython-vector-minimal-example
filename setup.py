from setuptools import setup
from Cython.Build import cythonize

ext_modules = cythonize("cythonCode/*.pyx", language="c++")

setup(ext_modules=ext_modules)
