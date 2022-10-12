T getData<T>(T value) {
  return value;
}

main() {
  print(getData(3));
  print(getData<String>('sdfasdf'));
}
