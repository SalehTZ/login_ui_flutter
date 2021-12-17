import 'package:flutter/material.dart';

class AlertSignIn extends StatelessWidget {
  final String _titleTxt;
  final String _descriptionText;
  final String _btnText;

  const AlertSignIn(
    this._titleTxt,
    this._descriptionText,
    this._btnText, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'sign_up_dialog',
      child: AlertDialog(
        title: Text(_titleTxt),
        content: Text(_descriptionText),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(_btnText),
          ),
        ],
      ),
    );
  }
}
