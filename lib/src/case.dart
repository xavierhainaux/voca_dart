String capitalize(String word) {
  if (word.isEmpty) return word;

  return replaceAt(word, 0, transformer: (s) => s.toUpperCase());
}

String titleCase(String title) {
  // Remplacer la première lettre de chaque mot.
}

String replaceAt(String input, int startIndex,
    {int endIndex, String Function(String) transformer}) {
  endIndex ??= startIndex + 1;

  if (startIndex < 0) throw new RangeError.value(startIndex);
  if (startIndex > endIndex) throw new RangeError.value(startIndex);
  if (endIndex > input.length) throw new RangeError.value(endIndex);

  String before = input.substring(0, startIndex);
  String toReplace = input.substring(startIndex, endIndex);
  String after = input.substring(endIndex);

  String replace = transformer(toReplace);
  return '$before$replace$after';
}
