import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_crud/services/auth.service.dart';
import 'package:flutterfire_crud/widgets/email.textfield.dart';
import 'package:flutterfire_crud/widgets/password.textfield.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  final password = TextEditingController();
  String emailError = '';
  String passwordError = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              EmailTextField(
                email: email,
                emailError: emailError,
              ),
              PasswordTextField(
                password: password,
                passwordError: passwordError,
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () => {
                    AuthService(
                      email: email.text,
                      password: password.text,
                      goToHome: () => {context.go('/home')},
                      setEmailError: (error) {
                        setState(() {
                          emailError = error;
                        });
                      },
                      setPasswordError: (error) {
                        setState(() {
                          passwordError = error;
                        });
                      },
                    ).login()
                  },
                  child: const Text('Login'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                      color: Colors.grey.shade500, fontWeight: FontWeight.bold),
                  children: [
                    const TextSpan(text: "Don't have an account? "),
                    TextSpan(
                        text: "Sign up.",
                        style: TextStyle(color: Colors.red.shade700),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => {
                                context.go('/sign-up'),
                              })
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
