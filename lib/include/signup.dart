import 'package:flutter/material.dart';
import 'package:newsapp_gama/login.dart';
import 'package:toast/toast.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  void _showToast(String msg,{int duration,int gravity}){
    Toast.show(msg, context,duration: duration,gravity: gravity);
  }

  Widget build(BuildContext context) {
    final namaField = TextField(
      keyboardType: TextInputType.text,
      obscureText: false,
      style: TextStyle(fontSize: 20.0),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "nama",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
    );

    final emailField = TextFormField(
      keyboardType:TextInputType.emailAddress,
      obscureText: false,
      style: TextStyle(fontSize: 20.0),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "email",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
    );

    final passField = TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      style: TextStyle(fontSize: 20.0),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
    );

    final sgBtn = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30),
      color: Colors.red,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          _showToast("Berhasil registrasi akun",gravity: Toast.BOTTOM,duration: Toast.LENGTH_SHORT);
        },  
        child: Text("Sign Up"),
      ),
    );

    return Scaffold(
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 70.0,
                    child: Container(
                      width: 400,
                      height: 30,
                      child: Image.asset('lib/assets/logo.png'),
                    ),
                  ),
                  SizedBox(
                    height: 70.0,
                  ),
                  namaField,
                  SizedBox(
                    height: 10.0,
                  ),
                  emailField,
                  SizedBox(
                    height: 10.0,
                  ),
                  passField,
                  SizedBox(
                    height: 10.0,
                  ),
                  // new Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: <Widget>[
                  //     new Radio(
                  //       value: 0,
                  //       activeColor: Colors.red,
                  //     ),
                  //     new Text("Laki-laki",style: TextStyle(fontSize: 16.0),),
                  //     new Radio(
                  //       value: 0,
                  //       activeColor: Colors.red,
                  //     ),
                  //     new Text("Perempuan",style: TextStyle(fontSize: 16.0),),
                  //   ],
                  // ),
                  SizedBox(
                    height: 20.0,
                  ),
                  sgBtn,
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width,
                    onPressed: () {
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (contex) => Login()));
                    },
                    child: Text("Sudah punya akun? Login."),
                  ),
                  Row(
                    children: <Widget>[
                    
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
