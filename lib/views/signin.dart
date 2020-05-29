import 'package:flutter/material.dart';
import 'package:letsstudy/widgets/widget.dart';

class SingIn extends StatefulWidget {
  @override
  _SingInState createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            TextField(
              style: simpleTextStyle(),
              decoration: textFieldDecoration("email"),
            ),
              TextField(
                style: simpleTextStyle(),
                decoration: textFieldDecoration("password"),
              ),
            SizedBox(height: 8,),
            Container(
              alignment: Alignment.centerRight,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text("Forgot Password?", style: simpleTextStyle(),),
              ),
            ),
            SizedBox(height: 8,),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xff007EF4),
                    const Color(0xff2A75BC)
                  ]
                ),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Text("Sign In", style: TextStyle(
                  color: Colors.white,
                  fontSize: 17
              ),),
            )
          ],
        ),
      ),
    );
  }
}
