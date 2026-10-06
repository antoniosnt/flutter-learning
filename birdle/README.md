<p align="center">
  <img src="../assets/flutterpedia.svg" alt="Flutterpedia app icon" width="140">
</p>

<h1 align="center">Birdle</h1>

<p align="center">
  <img alt="Flutter" src="https://img.shields.io/badge/app-Flutter-02569B?logo=flutter&logoColor=white">
  <img alt="Dart" src="https://img.shields.io/badge/language-Dart-0175C2?logo=dart&logoColor=white">
</p>

> A small five-letter word guessing game built with Flutter.

The game evaluates each guess as an exact match, a letter in another position, or a miss. A round allows five attempts. The current word lists are small hard-coded samples in lib/game.dart.

## Run

<pre><code>flutter pub get
flutter run</code></pre>

Use the text field to enter a five-letter guess. The app offers a replay button after a win or loss.

## Project files

- lib/main.dart contains the Flutter interface and input handling.
- lib/game.dart contains word selection, game state, and guess evaluation.
