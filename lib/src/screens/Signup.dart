import 'package:coivd_app2/src/screens/Login.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 3,
        brightness: Brightness.dark,
        backgroundColor: Color.fromRGBO(254, 219, 208, 1.0),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: new BoxDecoration(
            gradient: LinearGradient(
                // colors: [Color.fromRGBO(254, 219, 208, 1.0), Colors.white],
                colors: [
              Colors.white,
              Color.fromRGBO(254, 219, 208, 1.0),
            ], stops: [
          0.3,
          0.7,
        ], begin: FractionalOffset.topRight, end: FractionalOffset.bottomLeft)),
        child: Column(
          children: [
            Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Create your account',
                      style: TextStyle(fontSize: 23, color: Colors.black),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      makeInput(label: "Email"),
                      makeInput(label: "Password", obscureText: true),
                      makeInput(label: "Confirm Password", obscureText: true)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border(
                            bottom: BorderSide(color: Colors.black),
                            top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black))),
                    child: MaterialButton(
                      onPressed: () {},
                      elevation: 0,
                      minWidth: double.infinity,
                      height: 60,
                      color: Color.fromRGBO(254, 219, 208, 1.0),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w600),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Have Account? '),
                    Text(
                      'Log In',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/images/x3/diamond.png'),
                    //fit: BoxFit.fitHeight,
                    alignment: Alignment.center,
                  )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
