import 'package:fvm/src/workflows/install_version_workflow.dart';
import 'package:gherkin/gherkin.dart';

import '../worlds/fvm.world.dart';

StepDefinitionGeneric whenInstallVersion() {
  return when<FvmWorld>(
    'I install',
    (context) async {
      await installWorkflow(context.world.activeVersion);
    },
  );
}
