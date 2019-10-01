cdef class PyClassOutVector:
  cdef vector[ClassOut] vec

  cdef move_from(self, vector[ClassOut]&& move_this):
    self.vec = move(move_this)

  def __getitem__(self, idx):
    return PyClassOut2(self, idx)

  def __len__(self):
    return self.vec.size()

cdef class PyClassOut2:
  cdef ClassOut* thisptr
  cdef PyClassOutVector vector

  def __cinit__(self, PyClassOutVector vec, idx):
    self.vector = vec
    self.thisptr = &vec.vec[idx] 

def PyAnalyze(classInList):
  classesIn = list_to_vec(classInList)
  cdef vector[ClassOut] classesOut = analyze(classesIn)
  
  retval = PyClassOutVector()
  retval.move_from(move(classesOut))

  return retval  

cdef vector[ClassIn] list_to_vec(classInList):
  cdef vector[ClassIn] classInVec
  for classIn in classInList:
    classInVec.push_back(<ClassIn> classIn)
  return classInVec 
