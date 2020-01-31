import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp_gama/include/signup.dart';
import 'package:newsapp_gama/menu.dart';
import 'package:newsapp_gama/services/auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  Login({this.auth, this.onSignIn});

  final BaseAuth auth;
  final VoidCallback onSignIn;

  @override
  _Login createState() => new _Login();
}

enum FormMode { LOGIN, SIGNUP }

class _Login extends State<Login> {
  // final _formkey=new GlobalKey<FormState>();

  // String _email;
  // String _password;
  // String _pesanError;

  // FormMode _formMode=FormMode.LOGIN;
  // bool _isLoding;

  // bool _validateAndSave(){
  //   final form=_formkey.currentState;
  //   if (form.validate()) {
  //     form.save();
  //     return true;
  //   }
  //   return false;
  // }

  // Future _validateAndSubmit() async {
  //   setState(() {
  //     _pesanError="";
  //     _isLoding=true;
  //   });
  //   if(_validateAndSave()){
  //     String user_id="";
  //     try{
  //       if (_formMode==FormMode.LOGIN) {
  //         user_id=await widget.auth.signIn(_email,_password);
  //         print("SignIn:$user_id");
  //       }
  //       setState(() {
  //         _isLoding=false;
  //       });

  //       if (user_id.length>0&&user_id!=null && _formMode==FormMode.LOGIN) {
  //         widget.onSignIn();
  //       }
  //     }catch (e){
  //       print("Error :$e");
  //       setState(() {
  //         _isLoding=false;
  //         _pesanError=e.message;
  //       });
  //     }
  //   }
  // }
  // @override
  // void initState(){
  //   _pesanError="";
  //   _isLoding=false;
  //   super.initState();
  // }

  // TextEditingController nameController = TextEditingController();

  // bool isLoggedIn = false;
  // String name = '';
  // @override
  // void initState() {
  //   super.initState();
  //   autoLogIn();
  // }

  // void autoLogIn() async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   final String userId = prefs.getString('username');

  //   if (userId != null) {
  //     setState(() {
  //       isLoggedIn = true;
  //       name = userId;
  //     });
  //     return;
  //   }
  // }

  // Future<Null> logout() async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setString('username', null);

  //   setState(() {
  //     name = '';
  //     isLoggedIn = false;
  //   });
  // }

  // Future<Null> loginUser() async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setString('username', nameController.text);

  //   setState(() {
  //     name = nameController.text;
  //     isLoggedIn = true;
  //   });

  //   nameController.clear();
  // }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final emailField = TextFormField(
      keyboardType: TextInputType.emailAddress,
      obscureText: false,
      style: TextStyle(fontSize: 20.0),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: 'email',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      validator: (value) => value.isEmpty ? "email tidak boleh kosong" : null,
    );

    final passField = TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      style: TextStyle(fontSize: 20.0),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: 'Password',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      validator: (value) =>
          value.isEmpty ? "Password tidak boleh kosong" : null,
    );

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.red,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          // isLoggedIn ? HomePage():SignUp();
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
        },
        child: Text(
          "Login",
        ),
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
                    height: 100.0,
                    child: Container(
                      width: 800.0,
                      height: 70.0,
                      child: Image.asset('lib/assets/logo.png'),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  emailField,
                  SizedBox(
                    height: 16.0,
                  ),
                  passField,
                  SizedBox(
                    height: 40.0,
                  ),
                  loginButton,
                  SizedBox(
                    height: 10.0,
                  ),
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width,
                    onPressed: () {
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (contex) => SignUp()));
                    },
                    child: Text("Belum Punya Akun? Klik."),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
