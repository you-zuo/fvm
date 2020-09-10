import 'package:fvm/fvm.dart';
import 'package:gherkin/gherkin.dart';

import '../worlds/fvm.world.dart';

StepDefinitionGeneric thenVersionInstalled() {
  return when<FvmWorld>(
    'I expect to be installed correctly',
    (context) async {
      final isInstalled =
          await LocalVersionRepo.isInstalled(context.world.activeVersion);
      context.expectMatch(isInstalled, true);
    },
  );
}
