class Ticker {
  Stream<int> tick({int ticks}) {
    return Stream.periodic(Duration(seconds: 1), (x) {
      // emits the remaining seconds to ticks in every seconds.
      return ticks - x - 1;
    }).take(ticks);
  }
}
