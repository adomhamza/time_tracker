import 'package:flutter/material.dart';
import 'package:time_tracker/buttons/custom_raised_button.dart';

class FormSubmitButton extends CustomRaisedButton {
  FormSubmitButton({
    @required String text,
    VoidCallback onPressed,
  }) : super(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          height: 44.0,
          borderRadius: 4.0,
          color: Colors.indigo,
          onPressed: onPressed,
        );
}
