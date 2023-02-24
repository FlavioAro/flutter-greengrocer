import 'package:flutter/material.dart';
import 'package:greengrocer/src/utils/colors.dart';
import 'package:greengrocer/src/views/components/custom_textfield.dart';
import 'package:greengrocer/src/views/components/buttons/custom_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: colorNeutral300,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 40,
                            color: colorNeutral200,
                            fontWeight: FontWeight.bold,
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
                        const CustomTextField(
                          label: 'Name',
                          icon: Icons.person,
                        ),
                        const SizedBox(height: 15),
                        const CustomTextField(
                          label: 'Cell phone',
                          icon: Icons.phone,
                        ),
                        const SizedBox(height: 15),
                        const CustomTextField(
                          label: 'CPF',
                          icon: Icons.file_copy,
                        ),
                        const SizedBox(height: 15),
                        CustomButton(
                          onPressed: () {},
                          label: 'Register user',
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 10,
                left: 10,
                child: SafeArea(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: colorNeutral200,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
