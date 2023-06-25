import '06_classes.dart';

class Orbiter extends Spacecraft {
  double altitude;

  Orbiter(super.name, DateTime super.launchDate, this.altitude);
}

void main(List<String> args) {
  var orbiter = Orbiter('Voyager', DateTime(1977, 9, 5), 3.7);
  orbiter.describe();
}
