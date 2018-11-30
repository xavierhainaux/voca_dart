
import 'package:voca/src/case.dart';

String lowerCamel(Iterable<String> input) {
  return _mapWithIndex(
          input, (s, index) => index == 0 ? capitalize(s) : s.toLowerCase())
      .join('');
}

String upperCamel(Iterable<String> input) {
  return input.map((s) => capitalize(s)).join('_');
}

String lowerHyphen(Iterable<String> input) {
  return input.map((s) => s.toLowerCase()).join('-');
}

String lowerUnderscore(Iterable<String> input) {
  return input.map((s) => s.toLowerCase()).join('_');
}

String upperUnderscore(Iterable<String> input) {
  return input.map((s) => s.toUpperCase()).join('_');
}

Iterable<T> _mapWithIndex<E, T>(
    Iterable<E> collection, T Function(E, int) f) sync* {
  int index = 0;
  for (E element in collection) {
    yield f(element, index);
    ++index;
  }
}
