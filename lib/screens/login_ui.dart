import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_ui/components/round_btn.dart';
import 'package:login_ui/components/text_input_field.dart';
import 'package:login_ui/constants/theme_data.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: primaryColorC,
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: 120.0,
              ),
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    'Sign In',
                    style: TextStyle(fontSize: 25, color: textColor),
                    // style: GoogleFonts.nunito(fontSize: 25),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 5, top: 40),
                    child: CustomeTextInput('Username', false, Icons.person),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 5, top: 18),
                    child: CustomeTextInput('Password', true, Icons.vpn_key),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: CustomButton('Login'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    '- OR -',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 0, top: 10),
                        child: MaterialButton(
                          minWidth: 10,
                          color: Colors.white,
                          onPressed: () {},
                          child: Image.asset(
                            'assets/icon/icon_facebook_48.png',
                            height: 30,
                            width: 30,
                          ),
                          shape: CircleBorder(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 0, top: 10),
                        child: MaterialButton(
                          minWidth: 10,
                          color: Colors.white,
                          onPressed: () {},
                          child: Image.asset(
                            'assets/icon/icon_google_48.png',
                            height: 30,
                            width: 30,
                          ),
                          shape: CircleBorder(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
