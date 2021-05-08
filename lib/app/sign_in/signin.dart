import 'package:flutter/material.dart';
import 'package:time_tracker/app/sign_in/email_signin.dart';
import 'package:time_tracker/buttons/custom_raised_button.dart';
import 'package:time_tracker/services/auth.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({
    Key key,
    @required this.auth,
  }) : super(key: key);

  final AuthBase auth;

  Future<void> _signinAnonymously() async {
    try {
      await auth.signInAnonymously();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _signInWithGoogle() async {
    try {
      await auth.signInWithGoogle();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _signInWithFaceBook() async {
    try {
      await auth.signInWithFaceBook();
    } catch (e) {
      print(e.toString());
    }
  }

  void _signInWithEmail(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => EmailSignInPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trackers'),
        elevation: 0.0,
      ),
      body: _buildContainer(context),
    );
  }

  Widget _buildContainer(BuildContext context) {
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
            onPressed: _signInWithGoogle,
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
            onPressed: _signInWithFaceBook,
          ),
          SizedBox(
            height: 8.0,
          ),
          CustomRaisedButton(
            child: BuildText(
              text: 'Sign In with Email',
              textColor: Colors.white,
            ),
            onPressed: () => _signInWithEmail(context),
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
            onPressed: _signinAnonymously,
            color: Colors.lime[300],
          ),
        ],
      ),
    );
  }
}
