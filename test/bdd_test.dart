import 'dart:async';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';

import 'support_files/steps/given_version.step.dart';
import 'support_files/steps/then_version_installed.step.dart';
import 'support_files/steps/when_install_version.step.dart';
import 'support_files/worlds/fvm.world.dart';

Future<void> main() async {
  final steps = [
    givenVersion(),
    whenInstallVersion(),
    thenVersionInstalled(),
  ];
  final config = TestConfiguration.DEFAULT(steps)
    ..features = [Glob(r'test/features/**.feature')]
    ..reporters = [ProgressReporter(), JsonReporter(path: './report.json')]
    ..createWorld = (TestConfiguration config) {
      return Future.value(FvmWorld());
    };

  await GherkinRunner().execute(config);
  print('Worked');
}
