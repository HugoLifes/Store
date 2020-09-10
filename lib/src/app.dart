import 'package:coivd_app2/src/screens/Login.dart';
import 'package:coivd_app2/src/screens/Signup.dart';
import 'package:flutter/material.dart';
//import '../colors.dart';

//diseño principal
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(254, 219, 208, 1.0),
      ),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          decoration: new BoxDecoration(
              gradient: LinearGradient(
                  // colors: [Color.fromRGBO(254, 219, 208, 1.0), Colors.white],
                  colors: [
                Color.fromRGBO(254, 219, 208, 1.0),
                Colors.white,
                Colors.black
              ],
                  stops: [
                0.1,
                0.7,
                0.7
              ],
                  begin: FractionalOffset.topRight,
                  end: FractionalOffset.bottomLeft)),
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    'STORE',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Verifica tu identidad, para continuar.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17, color: Colors.grey[700]),
                  )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        alignment: Alignment.center,
                        //fit: BoxFit.fitHeight,
                        image: AssetImage('assets/images/x3/diamond.png'))),
              ),
              Column(children: [
                MaterialButton(
                  color: Colors.white,
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    'Log In',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: BorderSide(color: Colors.black)),
                )
              ]),
              Column(children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border(
                            bottom: BorderSide(color: Colors.black),
                            top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black))),
                    child: MaterialButton(
                      elevation: 0,
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()));
                      },
                      color: Color.fromRGBO(254, 219, 208, 1.0),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w600),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ))
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
