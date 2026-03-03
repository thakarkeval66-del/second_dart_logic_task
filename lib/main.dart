void main(){
  print('--------------------------------------------------');
  final List<int> inputList = [9, 7, 6, 5, 9, 3, 4, 4, 2];

  print('Original list: $inputList');

  // Step 1: Remove duplicates
  final List<int> uniqueElements = _removeDuplicates(inputList);
  print('List after removing duplicates: $uniqueElements');

  // Step 2: Sort the remaining unique elements
  final List<int> finalSortedList = _bubbleSort(uniqueElements);
  _bubbleSort(uniqueElements);

  // Step 3: Print the final sorted list
  print('Final sorted list (unique elements): $finalSortedList');
  print('--------------------------------------------------');

// Example with an empty list
  final List<int> emptyList = [];
  print('\nOriginal empty list: $emptyList');
  final List<int> uniqueEmpty = _removeDuplicates(emptyList);
  final List<int> sortedEmpty = _bubbleSort(uniqueEmpty);
  print('Final sorted list (empty elements): $sortedEmpty');

  print('--------------------------------------------------');

  // Example with all duplicates
  final List<int> allDuplicates = [5, 5, 5, 5, 5];
  print('\nOriginal all duplicate list: $allDuplicates');
  final List<int> uniqueAllDuplicates = _removeDuplicates(allDuplicates);
  final List<int> sortedAllDuplicates = _bubbleSort(uniqueAllDuplicates);
  print('Final sorted list (all duplicate elements): $sortedAllDuplicates');
  print('--------------------------------------------------');

}



List<int> _bubbleSort(List<int> list) {
  if (list.isEmpty) {
    return [];
  }

  final List<int> sortedList = [];
  for (final int element in list) {
    sortedList.add(element);
  }
  final int n = sortedList.length;

  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      // Compare adjacent elements
      if (sortedList[j] > sortedList[j + 1]) {
        // Swap elements if they are in the wrong order
        final int temp = sortedList[j];
        sortedList[j] = sortedList[j + 1];
        sortedList[j + 1] = temp;
      }
    }
  }
  return sortedList;
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
