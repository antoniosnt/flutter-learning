import 'package:birdle/game.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Align(
            alignment: Alignment.centerLeft,
            child: Text('Birdle'),
          ),
        ),
        body: Column(children: [GamePage()]),
      ),
    );
  }
}

/// A StatelessWidget cannot change its own properties because widget instances are immutable.
/// However, its displayed values can change when Flutter rebuilds it with a new instance—for example,
/// when its parent passes different constructor values.
class Tile extends StatelessWidget {
  const Tile(this.letter, this.hitType, {super.key});

  final String letter;
  final HitType hitType;

  @override
  Widget build(BuildContext context) {
    // TODO: Replace Container with widgets
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        color: switch (hitType) {
          HitType.hit => Colors.green,
          HitType.partial => Colors.yellow,
          HitType.miss => Colors.grey,
          _ => Colors.white,
        },
      ),
      child: Center(
        child: Text(
          letter.toUpperCase(),
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final Game _game = Game();

  /// Feedback shown below the board: erro de entrada, vitória ou derrota.
  String? _message;

  void _submitGuess(String guess) {
    setState(() {
      if (guess.length != 5) {
        _message = 'A palavra precisa ter 5 letras.';
        return;
      }

      if (!_game.isLegalGuess(guess)) {
        _message = '"$guess" não está na lista de palavras.';
        return;
      }

      _game.guess(guess);

      _message = switch (_game) {
        Game(didWin: true) => 'Acertou! A palavra era ${_game.hiddenWord}.',
        Game(didLose: true) => 'Acabaram as tentativas. '
            'A palavra era ${_game.hiddenWord}.',
        _ => null,
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        spacing: 5,
        children: [
          for (final guess in _game.guesses)
            Row(
              spacing: 5,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...guess.map((letter) => Tile(letter.char, letter.type)),
              ],
            ),
          if (_message case final message?)
            Text(message, style: Theme.of(context).textTheme.titleMedium),
          if (_game.didWin || _game.didLose)
            FilledButton(
              onPressed: () {
                setState(() {
                  _game.resetGame();
                  _message = null;
                });
              },
              child: const Text('Jogar de novo'),
            )
          else
            GuessInput(onSubmitGuess: _submitGuess),
        ],
      ),
    );
  }
}

class GuessInput extends StatefulWidget {
  const GuessInput({super.key, required this.onSubmitGuess});

  final void Function(String) onSubmitGuess;

  @override
  State<GuessInput> createState() => _GuessInputState();
}

class _GuessInputState extends State<GuessInput> {
  final TextEditingController _textEditingController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _textEditingController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onSubmit() {
    widget.onSubmitGuess(_textEditingController.text.trim());
    _textEditingController.clear();
    _focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              maxLength: 5,
              focusNode: _focusNode,
              autofocus: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(35)),
                ),
              ),
              controller: _textEditingController,
              onSubmitted: (input) {
                _onSubmit();
              },
            ),
          ),
        ),
        IconButton(
          padding: EdgeInsets.zero,
          icon: const Icon(Icons.arrow_circle_up),
          onPressed: _onSubmit,
        ),
      ],
    );
  }
}
