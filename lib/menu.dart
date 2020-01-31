import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newsapp_gama/layout/akun.dart';
import 'package:newsapp_gama/layout/home.dart';
import 'package:newsapp_gama/layout/news.dart';
import 'package:newsapp_gama/layout/video.dart';
import 'package:newsapp_gama/login.dart';


class HomePage extends StatefulWidget {
  @override
  _homepage createState() => new _homepage();
}

class _homepage extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() { 
    controller = new TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  //
  int selectedIndex = 0;
  final layoutPage = [Home(), Video(),News(),Akun()];

  void onTabItem(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   title: Row(
      //     children: <Widget>[
      //       Expanded(
      //         child: Container(
      //           padding: EdgeInsets.all(10.0),
      //           decoration: BoxDecoration(
      //             color: Colors.grey[100],
      //             borderRadius: BorderRadius.all(Radius.circular(12.0)),
      //           ),
      //           child: Row(
      //             children: <Widget>[
      //               Icon(Icons.search,color: Colors.grey[400],),
                    
      //               Text(
      //                 "Cari Berita....",
      //                 style: TextStyle(
      //                   color: Colors.grey[400],
      //                   fontSize: 14.0,
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      //   actions: <Widget>[
      //     IconButton(icon: Icon(Icons.notifications_active),iconSize: 28.0,color: Colors.grey[500],
      //     onPressed: (){

      //     },),
      //     IconButton(icon: Icon(Icons.new_releases),iconSize: 20.0,color: Colors.grey[500],
      //     onPressed: (){

      //     },)
      //   ],
      // ),
      body: layoutPage.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.home), title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.youtube), title: Text("Video")),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.fire), title: Text("Terkini")),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("Akun")),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: onTabItem,
      ),
      //       drawer: Drawer(
       
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       DrawerHeader(
      //         child: Text('Drawer Header'),
      //         decoration: BoxDecoration(
      //           color: Colors.red,
      //         ),
      //       ),
      //       ListTile(
      //         title: Text('Item 1'),
      //         onTap: () {
      //           //update state dari page
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: Text('Item 2'),
      //         onTap: () {
                
      //           Navigator.pop(context);
      //         },
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
