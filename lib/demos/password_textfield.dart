import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({Key? key, this.controller}) : super(key: key);
  final TextEditingController? controller;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isSecure=false;
  void changeSecure(){
    setState(() {
      _isSecure=!_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: _isSecure,
      obscuringCharacter: '#',
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        hintText: 'Password',
        suffix: buildIconButton()
      ),
    );
  }

  IconButton buildIconButton() {
    return IconButton(onPressed: () {
        changeSecure();
      },icon: Icon(_isSecure ?Icons.visibility :Icons.visibility_off),);
  }
}
