import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newsapp_gama/include/detail_berita.dart';
import 'package:newsapp_gama/utils/ResponseBerita.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:page_transition/page_transition.dart';

// import 'detail_berita.dart';
class News extends StatefulWidget {
  static String tag = 'data-berita';
  @override
  _News createState() => new _News();
}

class _News extends State<News> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      new GlobalKey<RefreshIndicatorState>();
  Color _color = Colors.grey;
  String Base_Url =
      "https://**********/api/android/v1/list?datewl=0000-00-00%2000:00:00&kategori=3&berita=baru";
  List<Berita> list;
  //api berita list
  Future<List<Berita>> _getBerita() async {
    var res = await http
        .get(Uri.encodeFull(Base_Url), headers: {"Accept": "application/json"});

    print(res.body);
    if (res.statusCode == 200) {
      var data = json.decode(res.body);
      var rest = data["data"] as List;
      print(rest);
      list = rest.map<Berita>((json) => Berita.fromJson(json)).toList();
    }
    print("List Size: ${list.length}");
    return list;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Berita Terkini'),
        backgroundColor: Colors.red,
        //untuk menghilangkan back button
        automaticallyImplyLeading: false,
        actions: <Widget>[
          FlatButton(
            child: Icon(Icons.search,color: Colors.white,),
            onPressed: (){},
          )
        ],
      ),

      body: Container(
        child: FutureBuilder(
          future: _getBerita(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            print(snapshot.data);
            if (snapshot.data == null) {
              return Container(
                  child: Center(
                child: CircularProgressIndicator(),
              ));
            } else {
              return RefreshIndicator(
                key: _refreshIndicatorKey,
                onRefresh: () async {
                  await new Future.delayed(const Duration(seconds: 1));
                  setState(() {
                    list.shuffle();
                  });
                },
                child: ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      contentPadding: EdgeInsets.all(5.0),
                      leading: Container(
                        width: 100.0,
                        height: 300.0,
                        child: Image.network(
                            '${snapshot.data[index].foto_besar}',
                            fit: BoxFit.fill),
                      ),
                      title: Text(
                        snapshot.data[index].berita_judul,
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),
                      subtitle: Text(
                        snapshot.data[index].berita_tayang,
                        style: TextStyle(fontSize: 15.0, color: Colors.grey),
                      ),
                      // trailing: IconButton(icon: Icon(FontAwesomeIcons.bookmark,),onPressed: (){
                      //   _color=Colors.black;
                      // },),

                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => DetailBerita(
                                    snapshot.data[index].berita_id)));
                      },
                    );
                  },
                ),
              );
            }
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Imam Abdul Azis"),
              accountEmail: new Text("imamabdulazis028@gmail.com"),
              decoration: new BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage("lib/assets/drawer.jpg"),
                      fit: BoxFit.cover)),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: ExactAssetImage("lib/assets/user.jpg")),
            ),
            new ListTile(
                leading: Icon(Icons.person),
                title: new Text("Profile"),
                onTap: () {
                  Navigator.pop(context);
                }),
            new ListTile(
                leading: Icon(Icons.list),
                title: new Text("List"),
                onTap: () {
                  Navigator.pop(context);
                }),
            new ListTile(
                leading: Icon(Icons.bookmark_border),
                title: new Text("Bookmark"),
                onTap: () {
                  Navigator.pop(context);
                }),
            new ListTile(
                leading: Icon(Icons.settings),
                title: new Text("Setting"),
                onTap: () {
                  Navigator.pop(context);
                }),
            new Divider(),
            new ListTile(
                leading: Icon(Icons.info),
                title: new Text("About"),
                onTap: () {
                  Navigator.pop(context);
                }),
            new ListTile(
                leading: Icon(Icons.power_settings_new),
                title: new Text("Logout"),
                onTap: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
