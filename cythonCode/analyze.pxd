from libcpp.vector cimport vector
from classOut cimport ClassOut
from classIn cimport ClassIn, PyClassIn

cdef extern from "../cppCode/analyze.h":
  vector[ClassOut] analyze(vector[ClassIn])
