import 'dart:io';
import '09_mixins.dart';

Future<void> describeFlybyObjects(List<String> flybyObjects) async {
  try {
    for (final object in flybyObjects) {
      var description = await File('$object.txt').readAsString();
      print(description);
    }
  } on IOException catch (e) {
    print('Could not describe object: $e');
  } finally {
    flybyObjects.clear();
  }
}

void main(List<String> args) {
  var craft = PilotedCraft('Discovery', DateTime(1998, 10, 29));
  if (craft.astronauts == 0) {
    throw StateError('No astronauts.');
  }
}
