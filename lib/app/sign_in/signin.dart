import 'package:flutter/material.dart';
import 'package:time_tracker/buttons/custom_raised_button.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text('Trackers'),
        elevation: 0.0,
      ),
      body: _buildContainer(),
    );
  }

  Widget _buildContainer() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/day.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Sign In',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 32.0,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 8.0,
          ),
          CustomRaisedButton(
            text: "Sign In with Google",
            color: Colors.white,
            onPressed: () {},
            textColor: Colors.black,
          ),
          SizedBox(
            height: 8.0,
          ),
          CustomRaisedButton(
            color: Colors.blue,
            text: 'Sign In with FaceBook',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
