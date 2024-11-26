class Singleton {

  Singleton._privateConstructor();

  static final Singleton _instance = Singleton._privateConstructor();

  static Singleton get instance => _instance;

  int number = 0;

  void incrementNumber() {
    number++;
  }
}
