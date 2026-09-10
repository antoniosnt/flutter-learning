import 'package:command_runner/command_runner.dart';

const String version = '0.0.1';

/// dart run (without arguments)
/// dart bin/cli.dart version (with arguments)
void main(List<String> arguments) async {
  /// This code creates a CommandRunner instance, adds the HelpCommand to it using a method cascade (..addCommand)
  /// which lets you call a method on an object directly after creating it, 
  /// and then runs the command runner with the command-line arguments.
  var commandRunner = CommandRunner(onError: (Object error) {
    if (error is Error) {
      throw error;
    }

    if (error is Exception) {
      print(error);
    }
  })..addCommand(HelpCommand());

  commandRunner.run(arguments);
}
