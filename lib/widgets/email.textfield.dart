import 'package:flutter/material.dart';

class EmailTextField extends StatefulWidget {
  final TextEditingController email;
  final String? emailError;
  const EmailTextField({super.key, required this.email, this.emailError});

  @override
  createState() => EmailTextFieldState();
}

class EmailTextFieldState extends State<EmailTextField> {
  bool isObscureText = true;
  Icon icon = const Icon(Icons.close);
  Color color = Colors.red;
  // ignore: unnecessary_string_escapes
  RegExp emailRegExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  @override
  build(context) {
    return Column(
      children: [
        TextField(
          controller: widget.email,
          decoration: InputDecoration(
              suffixIcon: icon,
              suffixIconColor: color,
              hintText: 'xxxx_xx@xxx.com'),
          onChanged: (value) => {
            if (emailRegExp.hasMatch(value))
              {
                setState(() {
                  icon = const Icon(Icons.check);
                  color = Colors.orange;
                })
              }
            else
              {
                setState(() {
                  icon = const Icon(Icons.close);
                  color = Colors.red;
                })
              }
          },
        ),
        Text(
          widget.emailError ?? '',
          style: TextStyle(color: Colors.red.shade500),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
