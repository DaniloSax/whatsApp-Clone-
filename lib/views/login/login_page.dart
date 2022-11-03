import 'package:flutter/material.dart';
import 'package:whatsapp_clone/views/components/text_form_field_base.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Image.asset(
              'assets/images/logo_waths.png',
              height: 200,
              fit: BoxFit.scaleDown,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const TextFormFieldBase(hintText: 'Email'),
                const SizedBox(height: 10),
                const TextFormFieldBase(
                  hintText: 'Senha',
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                    ),
                    child: const Text('Entrar'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
