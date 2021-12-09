import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo

              _logo(),

              // Texto 1

              const Text(
                'Get your Money Under Control',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),

              // Texto 2

              const Text(
                'Manage your expenses. Seamlessly.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),

              // Botões

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text('Sign Up with Email ID'),
                  style: ElevatedButton.styleFrom(),
                  onPressed: () {},
                ),
              ),

              // !
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: Image.asset(
                    'assets/images/google-logo.png',
                    width: 16,
                  ),
                  label: const Text('Sign Up with Google'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                  ),
                  onPressed: () {},
                ),
              )
              // ! Already have an account? Sign In
            ],
          ),
        ),
      ),
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
