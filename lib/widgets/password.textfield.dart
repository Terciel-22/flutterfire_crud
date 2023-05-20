import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final TextEditingController password;
  final String? passwordError;
  const PasswordTextField(
      {super.key, required this.password, this.passwordError});

  @override
  createState() => PasswordTextFieldState();
}

class PasswordTextFieldState extends State<PasswordTextField> {
  bool isObscureText = true;
  Icon icon = const Icon(Icons.visibility);

  @override
  build(context) {
    return Column(
      children: [
        TextField(
          controller: widget.password,
          obscureText: isObscureText,
          decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () => {
                  setState(() {
                    if (isObscureText) {
                      icon = const Icon(Icons.visibility);
                      isObscureText = false;
                    } else {
                      icon = const Icon(Icons.visibility_off);
                      isObscureText = true;
                    }
                  })
                },
                icon: icon,
              ),
              suffixIconColor: Colors.black38,
              hintText: '******'),
        ),
        Text(
          widget.passwordError ?? '',
          style: TextStyle(color: Colors.red.shade500),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
