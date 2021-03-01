import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        children: <Widget>[
          Container(
            color: Colors.amberAccent,
            child: SizedBox(
              height: 100.0,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            color: Colors.amberAccent,
            child: SizedBox(
              height: 100.0,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            color: Colors.amberAccent,
            child: SizedBox(
              height: 100.0,
            ),
          ),
        ],
      ),
    );
  }
}
