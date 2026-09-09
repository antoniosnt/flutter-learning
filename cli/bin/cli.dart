import 'package:command_runner/command_runner.dart';

const String version = '0.0.1';

/// dart run (without arguments)
/// dart bin/cli.dart version (with arguments)
void main(List<String> arguments) async {
  var runner = CommandRunner();
  await runner.run(arguments);
}
