import 'package:flutter/material.dart';
import 'package:login_ui/constants/theme_data.dart';

class CustomButton extends StatelessWidget {
  final String _btnText;
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
        onPressed: () {},
      ),
    );
  }
}
