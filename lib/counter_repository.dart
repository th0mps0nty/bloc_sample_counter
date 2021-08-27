import 'dart:math';

class CounterRepo {
  Future<int> getRandomValue() async {
    return Future.delayed(Duration(milliseconds: 2000))
        .then((onValue) => Random().nextInt(100));
  }
}
