import 'package:flutter/material.dart';
import 'package:greengrocer/src/utils/colors.dart';
import 'package:greengrocer/src/views/components/custom_textfield.dart';
import 'package:greengrocer/src/views/components/buttons/custom_button.dart';
import 'package:greengrocer/src/views/components/buttons/custom_textbutton.dart';
import 'package:greengrocer/src/views/components/buttons/custom_outlinebutton.dart';
import 'package:greengrocer/src/views/screens/auth/sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: colorNeutral300,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontSize: 40,
                        ),
                        children: [
                          TextSpan(
                            text: 'Green',
                            style: TextStyle(
                              color: colorNeutral200,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'grocer',
                            style: TextStyle(
                              color: colorNeutral100,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                decoration: const BoxDecoration(
                  color: colorNeutral200,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(45),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const CustomTextField(
                      label: 'Email',
                      icon: Icons.email,
                    ),
                    const SizedBox(height: 15),
                    const CustomTextField(
                      label: 'Password',
                      icon: Icons.lock,
                      password: true,
                    ),
                    const SizedBox(height: 15),
                    CustomButton(
                      onPressed: () {},
                      label: 'To enter',
                    ),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: CustomTextButton(label: 'Forgot password?'),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: colorNeutral500,
                            thickness: 2,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text('OR'),
                        ),
                        Expanded(
                          child: Divider(
                            color: colorNeutral500,
                            thickness: 2,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    CustomOutlineButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (c) {
                              return const SignUpScreen();
                            },
                          ),
                        );
                      },
                      label: 'Create an account',
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
