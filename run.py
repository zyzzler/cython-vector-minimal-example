from cythonCode.classIn import PyClassIn
from cythonCode.classOut import PyClassOut
from cythonCode.analyze import PyAnalyze

classIn_list = []
classIn_list.append(PyClassIn())
classIn_list.append(PyClassIn())
classOut_list = PyAnalyze(classIn_list)
print(classOut_list)
