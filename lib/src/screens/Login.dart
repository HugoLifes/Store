import 'package:flutter/material.dart';

// ignore: unused_import
import '../app.dart';
import 'feed.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Login',
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
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
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
                        "Inicia con tu cuenta",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        makeInput(label: "Email"),
                        makeInput(label: "Password", obscureText: true),
                      ],
                    ),
                  ),
                  //botono de login y dimensiones
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
                        elevation: 0,
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Feed()));
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
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //liga para darte de alta
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Do you have acount?'),
                      Text(
                        'SignUp',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),
                  //contiene la imagen debajo del boton de login
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.center,
                            //fit: BoxFit.fitHeight,
                            image: AssetImage('assets/images/x3/diamond.png'))),
                  )
                ],
              ),
            ],
          )),
    );
  }
}

Widget makeInput({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[400]),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400]))),
      ),
      SizedBox(
        height: 30,
      ),
    ],
  );
}
