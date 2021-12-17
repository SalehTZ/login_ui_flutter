import 'package:flutter/material.dart';
import 'package:login_ui/constants/theme_data.dart';
import 'package:login_ui/screens/main_screen.dart';
import 'package:login_ui/constants/globals.dart' as globals;
import 'package:login_ui/components/dialogs/sign_up_success.dart';

class CustomButton extends StatelessWidget {
  final int _iD;
  final String _btnText;
  // final String _inputUsername;
  // final String _inputPassword;
  const CustomButton(this._iD, this._btnText, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 45),
      width: double.infinity,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        color: Colors.white,
        child: Text(
          _btnText,
          style: TextStyle(fontSize: 16, color: accentColorC),
        ),
        onPressed: () {
          if (_iD == 1)
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return MainScreen(globals.inputEmail, globals.inputPassword);
                },
              ),
            );
          else
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, _, __) => AlertSignIn(
                  'Successful',
                  'Sign Up was successful',
                  'Ok',
                ),
                opaque: false,
              ),
            );
        },
      ),
    );
  }
}
