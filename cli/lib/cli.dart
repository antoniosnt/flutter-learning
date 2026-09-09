import 'dart:io';

import 'package:http/http.dart' as http;

void printUsage() {
  print(
    'The following commands are valid: "help", "version", "wikipedia <ARTICLE-TITLE"',
  );
}

/// Added the "?" to arguments type because the argument can be null (null safety).
void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');

    final inputFromStdin = stdin.readLineSync();

    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return;
    }

    articleTitle = inputFromStdin;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  var articleContent = await getWikipediaArticle(articleTitle);
  print(articleContent);
}

// Future type indicates that this function will eventually produce a result (asynchronous).
Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$articleTitle',
  );

  final response = await http.get(url); // Make the HTTP request

  if (response.statusCode == 200) {
    return response.body;
  }

  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}
