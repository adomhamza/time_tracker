import 'package:flutter/material.dart';
import 'package:time_tracker/buttons/form_submit_button.dart';

class EmailSignInForm extends StatelessWidget {
  List<Widget> _buildChildren() {
    return [
      TextField(
        decoration: InputDecoration(
          labelText: "Email",
          hintText: 'test@gmail.com',
        ),
      ),
      SizedBox(
        height: 8.0,
      ),
      TextField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password',
        ),
      ),
      SizedBox(
        height: 8.0,
      ),
      FormSubmitButton(
        text: 'Sign in',
        onPressed: () {},
      ),
      SizedBox(
        height: 8.0,
      ),
      TextButton(
        onPressed: () {},
        child: Text('Need an account? Register'),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: _buildChildren(),
      ),
    );
  }
}
