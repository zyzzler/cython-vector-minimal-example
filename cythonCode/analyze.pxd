from libcpp.vector cimport vector
from classOut cimport ClassOut, PyClassOut
from classIn cimport ClassIn, PyClassIn

cdef extern from "<utility>":
  vector[ClassOut]&& move(vector[ClassOut]&&)

cdef extern from "../cppCode/analyze.h":
  vector[ClassOut] analyze(vector[ClassIn])
