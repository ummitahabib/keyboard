import 'package:flutter/material.dart';
import 'package:keyboard/widget/Numbers/text_key.dart';

import 'backspacekey.dart';
import 'capslock.dart';
import 'enterkey.dart';

class CustomKeyboard extends StatelessWidget {
  const CustomKeyboard({
    Key? key,
    this.onTextInput,
    this.onBackspace,
  }) : super(key: key);

  final ValueSetter<String>? onTextInput;
  final VoidCallback? onBackspace;

  void _textInputHandler(String text) => onTextInput?.call(text);

  void _backspaceHandler() => onBackspace?.call();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      color: Colors.blue,
      child: Column(
        children: [
          buildRowOne(),
          buildRowTwo(),
          buildRowThree(),
          buildRowFour()
        ],
      ),
    );
  }

  Expanded buildRowOne() {
    return Expanded(
      child: Row(
        children: [
          TextKey(
            text: '1',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: '2',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: '3',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: '4',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: '5',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: '6',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: '7',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: '8',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: '9',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: '0',
            onTextInput: _textInputHandler,
          ),
        ],
      ),
    );
  }

  Expanded buildRowTwo() {
    return Expanded(
      child: Row(
        children: [
          SizedBox(
            width: 30,
          ),
          TextKey(
            text: '-',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: '/',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: ':',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: ';',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: '(',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: ')',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: '\$',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: '&',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: '@',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: '\"',
            onTextInput: _textInputHandler,
          ),
          SizedBox(
            width: 30,
          ),
        ],
      ),
    );
  }

  Expanded buildRowThree() {
    return Expanded(
      child: Row(
        children: [
          CapsLockKey(
            onBackspace: _backspaceHandler,
          ),
          TextKey(
            text: '.',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: ',',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: '?',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: '!',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: '\'',
            onTextInput: _textInputHandler,
          ),
          BackspaceKey(
            onBackspace: _backspaceHandler,
          ),
        ],
      ),
    );
  }

  Expanded buildRowFour() {
    return Expanded(
      child: Row(
        children: [
          TextKey(
            text: 'ABC',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: ' space ',
            flex: 4,
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'return',
            onTextInput: _textInputHandler,
          ),
          EnterKey(
            onBackspace: _backspaceHandler,
          ),
        ],
      ),
    );
  }
}
