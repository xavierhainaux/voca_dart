

main() {
  print("'${[].join('')}'");
  print("'${[].map((s) => 'ok $s').join(',')}'");
  print("'${[''].map((s) => 'ok $s').join(',')}'");
}