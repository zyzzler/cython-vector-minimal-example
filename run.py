from cythonCode.classIn import PyClassIn
from cythonCode.classOut import PyClassOut
from cythonCode.analyze import PyAnalyze

#classIn_list = []
#classIn_list.append(PyClassIn())
#classIn_list.append(PyClassIn())
input_list = [1, 2]
classOut_list = PyAnalyze(input_list)
print(classOut_list)
print(len(classOut_list))
