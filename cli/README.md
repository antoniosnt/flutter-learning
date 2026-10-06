<p align="center">
  <img src="../assets/flutterpedia.svg" alt="Flutterpedia CLI icon" width="140">
</p>

<h1 align="center">Flutterpedia CLI</h1>

<p align="center">
  <img alt="Dart" src="https://img.shields.io/badge/language-Dart-0175C2?logo=dart&logoColor=white">
  <img alt="Command runner" src="https://img.shields.io/badge/CLI-command%20runner-8250DF">
</p>

> Dart command-line learning project with a custom command runner and a Wikipedia summary helper.

## Requirements

- Dart SDK matching the constraint in pubspec.yaml

## Run

From this directory:

<pre><code>dart pub get
dart run bin/cli.dart help</code></pre>

The executable currently registers the help command. The Wikipedia HTTP helper in lib/cli.dart is present but is not yet connected to a CLI command.

## Project files

- bin/cli.dart is the executable entry point.
- lib/cli.dart contains the Wikipedia summary request helper.
- The local command_runner dependency is in ../command_runner.

The current test file still contains starter-template code and needs to be updated to match this application.
