import 'package:flutter/material.dart';
import 'package:login_ui/constants/theme_data.dart';
import 'package:login_ui/screens/main_screen.dart';
import 'package:login_ui/constants/globals.dart' as globals;

class CustomButton extends StatelessWidget {
  final String _btnText;
  // final String _inputUsername;
  // final String _inputPassword;
  const CustomButton(this._btnText, {Key key}) : super(key: key);

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
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  MainScreen(globals.inputUsername, globals.inputPassword),
            ),
          );
        },
      ),
    );
  }
}

// Widget _loginRoundBtn(String _btnText, String _inputUsername,
//     String _inputPassword, BuildContext context) {
//   return
// }
