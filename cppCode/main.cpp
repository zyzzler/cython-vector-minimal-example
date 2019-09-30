#include "analyze.h"
#include <vector>
#include <iostream>

int main() {
  std::vector<ClassIn> inputVec;
  inputVec.push_back(ClassIn());
  inputVec.push_back(ClassIn());
  std::vector<ClassOut> outputVec = analyze(inputVec);
  std::cout << outputVec.size() << std::endl;
}
