cdef extern from "../cppCode/classOut.h":
  cdef cppclass ClassOut:
    ClassOut()

cdef class PyClassOut:
  cdef ClassOut classOut_c
