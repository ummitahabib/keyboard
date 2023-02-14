import 'package:flutter/material.dart';
import 'package:keyboard/widget/CapsAlphabets/text_key.dart';

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
            text: 'Q',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'W',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'E',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'R',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'T',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'Y',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'U',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'I',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'O',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'P',
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
            text: 'A',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'S',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'D',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'F',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'G',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'H',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'J',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'K',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'L',
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
            text: 'Z',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'X',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'C',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'V',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'B',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'N',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'M',
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
            text: '?123',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: ',',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: ' ',
            flex: 4,
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: '.',
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
