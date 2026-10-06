<p align="center">
  <img src="../assets/flutterpedia.svg" alt="Flutterpedia Wikipedia reader icon" width="140">
</p>

<h1 align="center">Wikipedia Reader</h1>

<p align="center">
  <img alt="Flutter" src="https://img.shields.io/badge/app-Flutter-02569B?logo=flutter&logoColor=white">
  <img alt="Wikipedia API" src="https://img.shields.io/badge/data-Wikipedia%20REST-000000">
</p>

> Flutter prototype for fetching and decoding Wikipedia article summaries.

The ArticleModel requests a random article summary from the Wikipedia REST API and maps the response into the Summary model. The UI is not connected to this model yet and currently shows a loading placeholder.

## Run

<pre><code>flutter pub get
flutter run</code></pre>

The current app screen is a scaffold for future work; a network request is made only when ArticleModel.getRandomArticleSummary is called by application code.

## Project files

- lib/main.dart contains the starter screen and ArticleModel.
- lib/summary.dart parses the Wikipedia API response.
