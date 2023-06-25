import '06_classes.dart';

mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

class PilotedCraft extends Spacecraft with Piloted {
  String? homePlanet;

  PilotedCraft(String name, DateTime? launchDate, [this.homePlanet])
      : super(name, launchDate);

  @override
  void describe() {
    super.describe();
    if (homePlanet != null) {
      print('Home planet: $homePlanet');
    }
  }
}

void main(List<String> args) {
  var craft = PilotedCraft('Discovery', DateTime(1998, 10, 29));
  craft.describe();
  craft.describeCrew();
}
