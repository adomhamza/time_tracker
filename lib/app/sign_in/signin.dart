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
            height: 48.0,
          ),
          CustomRaisedButton(
            child: BuildRow(
              image: 'images/google-logo.png',
              text: "Sign In with Google",
              textColor: Colors.black,
            ),
            color: Colors.white,
            onPressed: () {},
          ),
          SizedBox(
            height: 8.0,
          ),
          CustomRaisedButton(
            child: BuildRow(
              image: 'images/facebook-logo.png',
              text: 'Sign In with FaceBook',
            ),
            color: Colors.blue,
            onPressed: () {},
          ),
          SizedBox(
            height: 8.0,
          ),
          CustomRaisedButton(
            child: BuildText(
              text: 'Sign In with Email',
              textColor: Colors.white,
            ),
            onPressed: () {},
            color: Colors.teal[300],
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            'or',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          CustomRaisedButton(
            child: BuildText(
              textColor: Colors.white,
              text: 'Go Anonymous',
            ),
            onPressed: () {},
            color: Colors.lime[300],
          ),
        ],
      ),
    );
  }
}
