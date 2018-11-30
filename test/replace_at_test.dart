import 'package:test/test.dart';
import 'package:voca/src/case.dart';

main() {
  test('ReplaceAt normal', () {
    expect(replaceAt('some', 0, transformer: (s) => '88'), equals('88ome'));
    expect(replaceAt('s', 0, transformer: (s) => '88'), equals('88'));
    expect(replaceAt('some', 0, endIndex: 2, transformer: (s) => '88'),
        equals('88me'));
    expect(replaceAt('some', 0, endIndex: 2, transformer: (s) => '9'),
        equals('9me'));
  });

  test('ReplaceAt throws exception', () {
    expect(() => replaceAt('', 0, transformer: (s) => '88'),
        throwsA(const TypeMatcher<RangeError>()));
    expect(() => replaceAt('abc', -1, transformer: (s) => '88'),
        throwsA(const TypeMatcher<RangeError>()));
    expect(() => replaceAt('a', 1, transformer: (s) => '88'),
        throwsA(const TypeMatcher<RangeError>()));
    expect(() => replaceAt('a', 0, endIndex: 2, transformer: (s) => '88'),
        throwsA(const TypeMatcher<RangeError>()));
  });
}
