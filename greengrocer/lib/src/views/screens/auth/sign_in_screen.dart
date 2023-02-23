import 'package:flutter/material.dart';
import 'package:greengrocer/src/constants.dart';
import 'package:greengrocer/src/views/components/buttons/custom_outlinebutton.dart';
import 'package:greengrocer/src/views/components/buttons/custom_textbutton.dart';
import 'package:greengrocer/src/views/components/custom_textfield.dart';
import 'package:greengrocer/src/views/components/buttons/custom_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorNeutral300,
      body: Column(
        children: [
          Expanded(
            child: Container(color: colorNeutral300),
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
                  label: 'Senha',
                  icon: Icons.lock,
                  password: true,
                ),
                const SizedBox(height: 15),
                CustomButton(
                  onPressed: () {},
                  label: 'Entrar',
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: CustomTextButton(label: 'Esqueceu a senha?'),
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
                      child: Text('OU'),
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
                  onPressed: () {},
                  label: 'Criar conta',
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
