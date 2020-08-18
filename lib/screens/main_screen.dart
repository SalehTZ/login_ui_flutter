import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final String _inputUsername;
  final String _inputPassword;
  const MainScreen(
    this._inputUsername,
    this._inputPassword, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login App'),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Username $_inputUsername',
                textAlign: TextAlign.left,
              ),
              Text(
                'Password $_inputPassword',
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
