import 'package:voca/src/split_words.dart';
import 'package:test/test.dart';

void main() {
  test('split word', () {
    for (var entry in const {
      '': [],
      '   ': [],
      'a':['a'],
      'aaa':['aaa'],
      '   aaa   ':['aaa'],
      ' -  aaa -  ':['aaa'],
      r' -  ,aaa,./*$%€^¨@ -  ':['aaa'],
      r' -  ,aaa,./*$%€^¨@b -  ':['aaa', 'b'],
      'some words': ['some', 'words'],
      'some    words': ['some', 'words'],
      '    some    words   ': ['some', 'words'],
      'some_words': ['some', 'words'],
      'some__words': ['some', 'words'],
      '_some__words_': ['some', 'words'],
      'some-words': ['some', 'words'],
      '---some-words---': ['some', 'words'],
      '-_some words_-': ['some', 'words'],
      '__some--words__': ['some', 'words'],
      'someWords': ['some', 'Words'],
      'SomeWords': ['Some', 'Words'],
      'Some\'Words': ['Some', 'Words'],
      'Some"Words': ['Some', 'Words'],
      'Some "Words': ['Some', 'Words'],
      'HTMLParser': ['HTML', 'Parser'],
      'XMLHttpRequest': ['XML', 'Http', 'Request'],
      '1234Parser': ['1234', 'Parser'],
      '1234parser': ['1234', 'parser'],
      'Parser1234': ['Parser', '1234'],
      'HP2G': ['HP', '2G'],
      'H2O': ['H', '2O'], //TODO: préférer H2 O ou H2O (ne pas faire de mot de 1 lettre?)
      'HO2': ['HO', '2'], // TODO: préférer H O2 ou HO2 (ne pas mettre un chiffre tout seul?)
      'DoItOrNot4X': ['Do', 'It', 'Or', 'Not', '4X'],
      'DoItOrNot4': ['Do', 'It', 'Or', 'Not', '4'],
      'wheel_OfFortune': ['wheel', 'Of', 'Fortune'],
      'AString': ['A', 'String'],
      'HelloWorld': ['Hello', 'World'],
      'HélloWôrld': ['Héllo', 'Wôrld'],
      r'Héllo$Wôrld': ['Héllo', 'Wôrld'],
      'Héllo%Wôrld': ['Héllo', 'Wôrld'],
      'Héllo%WÔrld': ['Héllo', 'W', 'Ôrld'],
      'snake_case_2': ['snake', 'case', '2'],
      'kebab-case-2': ['kebab', 'case', '2'],
      'some.string': ['some', 'string'],
      'sômè.string': ['sômè', 'string'],
    }.entries) {
      expect(splitWords(entry.key), equals(entry.value), reason: 'input: ${entry.key}');
    }
  });
}
