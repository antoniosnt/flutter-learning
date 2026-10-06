<p align="center">
  <img src="../assets/flutterpedia.svg" alt="Flutterpedia CLI library icon" width="140">
</p>

<h1 align="center">command_runner</h1>

<p align="center">
  <img alt="Dart" src="https://img.shields.io/badge/library-Dart-0175C2?logo=dart&logoColor=white">
  <img alt="Package" src="https://img.shields.io/badge/package-CLI%20utilities-8250DF">
</p>

> A small Dart library for registering commands and parsing command-line arguments.

## Features

- Base Command and Option types.
- A CommandRunner that selects a command and parses its options.
- HelpCommand for printing usage information.
- ArgumentException for invalid command input.

## Use

Add the package to a Dart application's pubspec.yaml as a path dependency:

<pre><code>dependencies:
  command_runner:
    path: ../command_runner</code></pre>

Register commands with CommandRunner, then pass the process arguments to run. See the ../cli package for an example.

## Develop

<pre><code>dart pub get
dart test</code></pre>

The current test file is still the default package scaffold and refers to a sample class that is not defined in this package. Replace it with tests for command parsing and execution before relying on the test suite.
