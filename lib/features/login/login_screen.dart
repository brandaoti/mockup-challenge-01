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

              Text(
                'Get your Money Under Control',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),

              // Texto 2

              // Botões
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
