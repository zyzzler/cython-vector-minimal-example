cdef extern from "../cppCode/classIn.h":
  cdef cppclass ClassIn:
    ClassIn()

cdef class PyClassIn:
  cdef ClassIn classIn_c
