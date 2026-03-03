void main(){

  final List<int> inputList = [9, 7, 6, 5, 9, 3, 4, 4, 2];

  print('Original list: $inputList');

  // Step 1: Remove duplicates
  final List<int> uniqueElements = _removeDuplicates(inputList);
  print('List after removing duplicates: $uniqueElements');
}

List<int> _removeDuplicates(List<int> originalList) {
  if (originalList.isEmpty) {
    return [];
  }
  final List<int> uniqueList = [];
  for (int i = 0; i < originalList.length; i++) {
    final int currentElement = originalList[i];
    bool isDuplicate = false;

    // Manually check if currentElement is already in uniqueList
    for (int j = 0; j < uniqueList.length; j++) {
      if (uniqueList[j] == currentElement) {
        isDuplicate = true;
        break;
      }
    }

    if (!isDuplicate) {
      uniqueList.add(currentElement);
    }
  }
  return uniqueList;
}
