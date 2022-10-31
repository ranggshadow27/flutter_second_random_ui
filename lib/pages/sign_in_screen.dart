import 'package:flutter/material.dart';
import 'package:bwa_second_ui/theme/themes.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 28,
              vertical: 30,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Center(
                    child: Image.asset(
                      'assets/note.png',
                      width: 235,
                    ),
                  ),
                ),
                SizedBox(
                  height: 52,
                ),
                Align(
                  alignment: Alignment(-1, 1),
                  child: Text(
                    'Email Address',
                    style: openSansRegular.copyWith(
                      color: Color(0xFF17171A),
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                inputData('your Email here', false),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment(-1, 1),
                  child: Text(
                    'Password',
                    style: openSansRegular.copyWith(
                      color: Color(0xFF17171A),
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                inputData('your Password here', true),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/empty_state');
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shadowColor: Colors.transparent,
                      primary: btnBlueSignin,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Text(
                      'Log in',
                      style: openSansSBold.copyWith(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shadowColor: Colors.transparent,
                      primary: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      side: BorderSide(
                        width: 1,
                        color: btnGreySigin,
                      ),
                    ),
                    child: Text(
                      'Create New Account',
                      style: openSansSBold.copyWith(
                        fontSize: 18,
                        color: btnGreySigin,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget inputData(
    String hintText,
    bool isPassword,
  ) {
    return TextFormField(
      style: openSansSBold.copyWith(
        fontSize: 16,
      ),
      obscureText: isPassword,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20),
        hintText: hintText,
        fillColor: textBoxGrey,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
