/// Declare this file as a libary.
library;

/// export 'src/command_runner_base.dart'; is a crucial line that makes declarations from command_runner_base.dart
/// available to other packages that import the command_runner package. Without this export statement,
/// the classes and functions within command_runner_base.dart would be private to the command_runner package,
/// and you wouldn't be able to use them in your dartpedia application.
export 'src/command_runner_base.dart';
export 'src/arguments.dart';
export 'src/help_command.dart';
