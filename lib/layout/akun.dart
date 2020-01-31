import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newsapp_gama/login.dart';

class Akun extends StatefulWidget {
  Akun({Key key}) : super(key: key);

  _AkunState createState() => _AkunState();
}

class _AkunState extends State<Akun> {

  void _showDialog(){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text("Konfirmasi"),
          content: Text("Apakah anda yakin akan keluar aplikasi?"),
          actions: <Widget>[
            new FlatButton(
              child: Text("Ya"),
              onPressed: (){
                Navigator.push(context,new MaterialPageRoute(builder: (context)=>Login()));
              },
            ),
            new FlatButton(
              child: Text("Batal"),
              onPressed: (){
                Navigator.pop(context);
                // Navigator.of(context).pop();
              },
            )
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget _coverImage(Size screenSize) {
      return Container(
        height: screenSize.height / 3.5,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('lib/assets/drawer.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget _profileImage() {
      return Center(
        child: Container(
          width: 140.0,
          height: 140.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage('lib/assets/user.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(80.0),
            border: Border.all(
              color: Colors.white,
              width: 5.0,
            ),
          ),
        ),
      );
    }

    Widget _FullNama() {
      TextStyle _nameTextStyle = TextStyle(
        fontFamily: 'Roboto',
        color: Colors.black,
        fontSize: 28.0,
        fontWeight: FontWeight.w700,
      );

      return Text(
        "Imam Abdul Azis",
        style: _nameTextStyle,
      );
    }

     final logoutButton=Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.red,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: (){
         _showDialog();
        },
        child: Text(
          "Logout",
        ),
      ),
    );

    Widget _Status(BuildContext context) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Text(
          "Newbie Mobile Developer",
          style: TextStyle(
            fontFamily: 'Spectral',
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w300,
          ),
        ),
      );
    }

    Size pascreen = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _coverImage(pascreen),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: pascreen.height / 6.0,
                  ),
                  _profileImage(),
                  _FullNama(),
                  _Status(context),
                  SizedBox(
                    height: 20.0,
                  ),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text("Imam Abdul Azis"),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("+6281229765037"),
                  ),
                  ListTile(
                    leading: Icon(FontAwesomeIcons.instagram),
                    title: Text("_imunn"),
                  ),
                  ListTile(
                    leading: Icon(FontAwesomeIcons.facebook),
                    title: Text("Imam Abdul Azis"),
                  ),
                  ListTile(
                    leading: Icon(FontAwesomeIcons.github),
                    title: Text("imamabdulazis"),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Pengaturan Akun"),
                  ),
                  // ListTile(
                  //   leading: Icon(Icons.power_settings_new),
                  //   title: Text("Logout"),
                  // )
                  SizedBox(height: 20.0,),
                  Container(
                    margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                    child:   logoutButton,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
