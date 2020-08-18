import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/constants/theme_data.dart';
import 'package:login_ui/constants/globals.dart' as globals;

class CustomeTextInput extends StatefulWidget {
  final int _iD;
  final String _text;
  final IconData _iconData;
  final bool _obsecure;

  const CustomeTextInput(this._iD, this._text, this._obsecure, this._iconData,
      {Key key})
      : super(key: key);

  @override
  _CustomeTextInputState createState() => _CustomeTextInputState();
}

class _CustomeTextInputState extends State<CustomeTextInput> {
  String inputedUsername;
  String inputedPassword;
  bool _passMode;
  bool _obSecure;

  @override
  void initState() {
    super.initState();

    _passMode = widget._obsecure;
    _obSecure = widget._obsecure;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      height: 45,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 2),
            )
          ],
          color: textFieldBGColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: TextField(
        onChanged: (value) {
          if (!_passMode)
            globals.inputUsername = value;
          else
            globals.inputPassword = value;
        },
        obscureText: _obSecure,
        style: TextStyle(color: textColor),
        decoration: InputDecoration(
          suffixIcon: _passMode
              ? (_obSecure
                  ? IconButton(
                      icon: Icon(
                        Icons.lock_outline,
                        size: 16,
                        color: textColor,
                      ),
                      onPressed: () {
                        setState(() {
                          _obSecure = false;
                        });
                      })
                  : IconButton(
                      icon: Icon(
                        Icons.lock_open,
                        size: 16,
                        color: textColor,
                      ),
                      onPressed: () {
                        if (true) {
                          setState(() {
                            _obSecure = true;
                          });
                        }
                      }))
              : null,
          icon: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(
              widget._iconData,
              color: textColor,
            ),
          ),
          contentPadding:
              EdgeInsets.only(left: 0, right: 20, top: 10, bottom: 10),
          border: InputBorder.none,
          hintText: widget._text,
          hintStyle: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
