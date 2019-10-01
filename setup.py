from distutils.core import setup
from Cython.Build import cythonize
from setuptools.extension import Extension

extensions = [
  Extension("cythonCode.classIn",
            ["cythonCode/classIn.pyx", "cppCode/classIn.h"],
            language = "c++"
  ),
  Extension("cythonCode.classOut",
            ["cythonCode/classOut.pyx", "cppCode/classOut.h"],
            language = "c++"
  ),
  Extension("cythonCode.analyze",
            ["cythonCode/analyze.pyx", "cppCode/analyze.cpp"],
            language = "c++",
            extra_compile_args = ["-std=gnu++11"]
  )
]

setup(ext_modules=cythonize(extensions))
#ext_modules = cythonize("cythonCode/*.pyx", language="c++")

#setup(ext_modules=ext_modules)
