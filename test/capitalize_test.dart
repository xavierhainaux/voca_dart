import 'package:test/test.dart';

main() {
  test('Capitalize', () {
    var expected = {
      'some': 'Some',
      'some sentence': 'Some Sentence',
      'some.senTence': 'Some.SenTence',
      'some . sentence': 'Some . Sentence',
      'some .sentence': 'Some .Sentence',
      'some .sentence\nline2': 'Some .Sentence\nLine2',
      'aG123pT': 'AG123PT',
    };
  });
}
