import 'package:cli/cli.dart' as cli;

const String version = '0.0.1';

/// dart run (without arguments)
/// dart bin/cli.dart version (with arguments)
void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    cli.printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    /// Final variables is used when you never intend to change the variable again.
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    cli.searchWikipedia(inputArgs);
  } else {
    cli.printUsage();
  }
}
