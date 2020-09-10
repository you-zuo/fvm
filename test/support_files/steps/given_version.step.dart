import 'package:gherkin/gherkin.dart';

import '../worlds/fvm.world.dart';

StepDefinitionGeneric givenVersion() {
  return given1<String, FvmWorld>(
    'Version {word}',
    (version, context) async {
      context.world.activeVersion = version;
    },
  );
}
