import 'package:flutter/material.dart';
import 'package:challenge_01/core/core.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: _content(),
        ),
      ),
    );
  }

  Widget _content() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _logo(),
        const SizedBox(height: 16.0),
        _texts(),
        const SizedBox(height: 50.0),
        _buttons(),
      ],
    );
  }

  Widget _texts() {
    return Column(
      children: [
        _title(
          title: Strings.loginTitle,
          style: TextStyles.loginTitleStyle,
        ),
        const SizedBox(height: 12.0),
        _title(
          title: Strings.loginSubtitle,
          style: TextStyles.loginTitleStyle.copyWith(
            fontSize: 16,
            color: Colors.white.withOpacity(0.4),
          ),
        ),
      ],
    );
  }

  Widget _title({
    required String title,
    TextAlign textAlign = TextAlign.center,
    TextStyle style = TextStyles.loginTitleStyle,
  }) {
    return Text(
      title,
      style: style,
      textAlign: textAlign,
    );
  }

  Widget _buttons() {
    return Column(
      children: [
        SizedBox(
          height: 34,
          width: double.infinity,
          child: ElevatedButton(
            child: const Text(
              Strings.signUpButtonID,
              style: TextStyles.signUpTitleStyle,
            ),
            style: ElevatedButton.styleFrom(
              primary: AppColors.signUpButtonID,
            ),
            onPressed: () {},
          ),
        ),

        const SizedBox(height: 10.0),

        // !
        SizedBox(
          height: 34,
          width: double.infinity,
          child: ElevatedButton.icon(
            icon: Image.asset(
              Images.googleLogo,
              width: 16,
            ),
            label: Text(
              Strings.signUpButtonGoogle,
              style: TextStyles.signUpTitleStyle.copyWith(
                color: AppColors.backgroundBlack,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Colors.black,
            ),
            onPressed: () {},
          ),
        ),

        // ! Already have an account? Sign In
      ],
    );
  }

  Widget _logo() {
    return SizedBox(
      width: 70,
      height: 70,
      child: _logoIllustration(),
    );
  }

  Widget _logoIllustration() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                color: Color(0xFF5E5CE5),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                color: Color(0xFF5E5CE5),
                borderRadius: BorderRadiusDirectional.only(
                  bottomStart: Radius.circular(30),
                ),
              ),
            ),
          ],
        ),
        Container(
          width: 30,
          height: 60,
          decoration: const BoxDecoration(
            color: Color(0xFF5E5CE5),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
          ),
        ),
      ],
    );
  }

  // !

}
