<p align="center">
  <img src="assets/flutterpedia.svg" alt="Flutterpedia collection icon" width="160">
</p>

<h1 align="center">Flutterpedia</h1>

<p align="center">
  <img alt="Dart" src="https://img.shields.io/badge/language-Dart-0175C2?logo=dart&logoColor=white">
  <img alt="Flutter" src="https://img.shields.io/badge/apps-Flutter-02569B?logo=flutter&logoColor=white">
  <img alt="Learning projects" src="https://img.shields.io/badge/status-learning-8250DF">
</p>

> A collection of small Dart and Flutter learning projects.

## Projects

| Directory | Description |
| --- | --- |
| birdle/ | Flutter word-guessing game inspired by Wordle. |
| cli/ | Dart command-line application with a Wikipedia lookup helper. |
| command_runner/ | Small Dart library for defining and parsing CLI commands. |
| wikipedia_reader/ | Flutter prototype and data model for Wikipedia article summaries. |

Each directory is an independent Dart or Flutter package with its own pubspec.yaml and README.

## Requirements

Install the Dart SDK for command-line packages and Flutter for the mobile/desktop examples. Check each project's pubspec.yaml for its SDK constraint.

## Run an example

For a Flutter app, change to its directory and run:

<pre><code>cd birdle
flutter pub get
flutter run</code></pre>

For a Dart package, change into that package, fetch dependencies with dart pub get, then run its entrypoint or tests.

## Notes

These projects are experiments and starter exercises. Some packages still contain generated scaffolding or incomplete features; see their individual READMEs for current status.
