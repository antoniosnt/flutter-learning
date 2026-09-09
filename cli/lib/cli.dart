import 'dart:io';

void printUsage() {
  print(
    'The following commands are valid: "help", "version", "search <ARTICLE-TITLE"',
  );
}

/// Added the "?" to arguments type because the argument can be null (null safety).
void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}
