import 'dart:math';

class General {
  static T getRandomItem<T>(List<T> l) => l[Random().nextInt(l.length)];
}
