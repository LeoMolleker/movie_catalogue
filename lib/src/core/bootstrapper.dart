abstract class IBootstrapper {
  Future<void> bootstrap();
  void dispose();
}

class Bootstrapper extends IBootstrapper {
  @override
  Future<void> bootstrap() async {
    return;
  }

  @override
  void dispose() {
    return;
  }
}
