import 'package:cli/cli.dart' as cli;

const version = "0.0.1";

/// dart run (without arguments)
/// dart bin/cli.dart version (with arguments)
void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == "help") {
    cli.printUsage();
  } else if (arguments.first == "version") {
    print("Dartpedia CLI version $version");
  } else if (arguments.first == 'search') {
    print("Search command recognized!");
  } else {
    cli.printUsage();
  }
}
