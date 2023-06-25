
import '06_classes.dart';

class MockSpaceship implements Spacecraft {
  @override
  String name = 'Mock';

  @override
  DateTime? launchDate;

  @override
  int? get launchYear => launchDate?.year;

  @override
  void describe() {
    print('MockSpaceship: $name');
  }
}
abstract class Describable {
  void describe();

  void describeWithEmphasis() {
    print('=========');
    describe();
    print('=========');
  }
}
void main() {
  var mock = MockSpaceship();
  mock.describe();
}