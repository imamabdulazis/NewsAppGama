import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:newsapp_gama/include/detail_berita.dart';
import 'package:newsapp_gama/layout/akun.dart';
import 'package:newsapp_gama/layout/news.dart';
import 'package:newsapp_gama/layout/setting.dart';
import 'package:newsapp_gama/layout/tentang.dart';
import 'package:newsapp_gama/login.dart';
import 'package:newsapp_gama/utils/ResponseBerita.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:toast/toast.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      new GlobalKey<RefreshIndicatorState>();
  //event
  String Base_Url1 =
      "https://*********/api/android/v1/list?datewl=0000-00-00%2000:00:00&kategori=3&berita=baru";
  List<Berita> list1;
  //api berita list
  Future<List<Berita>> _getBerita1() async {
    var res = await http.get(Uri.encodeFull(Base_Url1),
        headers: {"Accept": "application/json"});

    print(res.body);
    if (res.statusCode == 200) {
      var data = json.decode(res.body);
      var rest = data["data"] as List;
      print(rest);
      list1 = rest.map<Berita>((json) => Berita.fromJson(json)).toList();
    }
    print("List Size: ${list1.length}");
    return list1;
  }

  //NLP
  String Base_Url2 =
      "https://*********/api/android/v1/list?datewl=0000-00-00%2000:00:00&kategori=4&berita=baru";
  List<Berita> list2;
  //api berita list
  Future<List<Berita>> _getBerita2() async {
    var res = await http.get(Uri.encodeFull(Base_Url2),
        headers: {"Accept": "application/json"});

    print(res.body);
    if (res.statusCode == 200) {
      var data = json.decode(res.body);
      var rest = data["data"] as List;
      print(rest);
      list2 = rest.map<Berita>((json) => Berita.fromJson(json)).toList();
    }
    print("List Size: ${list2.length}");
    return list2;
  }

  //inspirasi
  String Base_Url3 =
      "https://******/api/android/v1/list?datewl=0000-00-00%2000:00:00&kategori=5&berita=baru";
  List<Berita> list3;
  //api berita list
  Future<List<Berita>> _getBerita3() async {
    var res = await http.get(Uri.encodeFull(Base_Url3),
        headers: {"Accept": "application/json"});

    print(res.body);
    if (res.statusCode == 200) {
      var data = json.decode(res.body);
      var rest = data["data"] as List;
      print(rest);
      list3 = rest.map<Berita>((json) => Berita.fromJson(json)).toList();
    }
    print("List Size: ${list3.length}");
    return list3;
  }

  //tokoh
  String Base_Url4 =
      "https://************/api/android/v1/list?datewl=0000-00-00%2000:00:00&kategori=6&berita=baru";
  List<Berita> list4;
  //api berita list
  Future<List<Berita>> _getBerita4() async {
    var res = await http.get(Uri.encodeFull(Base_Url4),
        headers: {"Accept": "application/json"});

    print(res.body);
    if (res.statusCode == 200) {
      var data = json.decode(res.body);
      var rest = data["data"] as List;
      print(rest);
      list4 = rest.map<Berita>((json) => Berita.fromJson(json)).toList();
    }
    print("List Size: ${list4.length}");
    return list4;
  }

  //properti
  String Base_Url5 =
      "https://*******/api/android/v1/list?datewl=0000-00-00%2000:00:00&kategori=7&berita=baru";
  List<Berita> list5;
  //api berita list
  Future<List<Berita>> _getBerita5() async {
    var res = await http.get(Uri.encodeFull(Base_Url5),
        headers: {"Accept": "application/json"});

    print(res.body);
    if (res.statusCode == 200) {
      var data = json.decode(res.body);
      var rest = data["data"] as List;
      print(rest);
      list5 = rest.map<Berita>((json) => Berita.fromJson(json)).toList();
    }
    print("List Size: ${list5.length}");
    return list5;
  }

  //ekonomi
  String Base_Url6 =
      "https://*********/api/android/v1/list?datewl=0000-00-00%2000:00:00&kategori=8&berita=baru";
  List<Berita> list6;
  //api berita list
  Future<List<Berita>> _getBerita6() async {
    var res = await http.get(Uri.encodeFull(Base_Url6),
        headers: {"Accept": "application/json"});

    print(res.body);
    if (res.statusCode == 200) {
      var data = json.decode(res.body);
      var rest = data["data"] as List;
      print(rest);
      list6 = rest.map<Berita>((json) => Berita.fromJson(json)).toList();
    }
    print("List Size: ${list6.length}");
    return list6;
  }

  //perbankan
  String Base_Url7 =
      "https://********/api/android/v1/list?datewl=0000-00-00%2000:00:00&kategori=9&berita=baru";
  List<Berita> list7;
  //api berita list
  Future<List<Berita>> _getBerita7() async {
    var res = await http.get(Uri.encodeFull(Base_Url7),
        headers: {"Accept": "application/json"});

    print(res.body);
    if (res.statusCode == 200) {
      var data = json.decode(res.body);
      var rest = data["data"] as List;
      print(rest);
      list7 = rest.map<Berita>((json) => Berita.fromJson(json)).toList();
    }
    print("List Size: ${list7.length}");
    return list7;
  }

  //internt
  String Base_Url8 =
      "https://********/api/android/v1/list?datewl=0000-00-00%2000:00:00&kategori=10&berita=baru";
  List<Berita> list8;
  //api berita list
  Future<List<Berita>> _getBerita8() async {
    var res = await http.get(Uri.encodeFull(Base_Url8),
        headers: {"Accept": "application/json"});

    print(res.body);
    if (res.statusCode == 200) {
      var data = json.decode(res.body);
      var rest = data["data"] as List;
      print(rest);
      list8 = rest.map<Berita>((json) => Berita.fromJson(json)).toList();
    }
    print("List Size: ${list8.length}");
    return list8;
  }

  void _showToast(String msg, {int duration, int gravity}) {
    Toast.show(msg, context, duration: duration, gravity: gravity);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 8,
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 200.0,
                  floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Container(
                        width: 150.0,
                        height: 28.0,
                        child: Image.asset("lib/assets/logo.png"),
                      ),
                      background: Carousel(
                        images: [
                          NetworkImage(
                              'http://www.harian******/online/public/foto_news/image_news_535/01565085167SAVE_20190806_165111.jpg'),
                          NetworkImage(
                              'http://www.harian*******/online/public/foto_news/image_news_300/01565116737images%20(1).jpeg'),
                          NetworkImage(
                              'http://www.harian*****/online/public/foto_news/image_news_535/01565090113IMG_20190806_163504.jpg'),
                          NetworkImage(
                              'http://www.harian******/online/public/foto_news/image_news_535/01565085848IMG-20190806-WA0096.jpg'),
                        ],
                        dotSize: 4.0,
                        dotSpacing: 15.0,
                        dotColor: Colors.transparent,
                        indicatorBgPadding: 5.0,
                        dotBgColor: Colors.transparent,
                        overlayShadow: true,
                        overlayShadowSize: 0.7,
                      )),
                ),
                SliverPersistentHeader(
                  delegate: _SliverAppBarDelegate(
                    TabBar(
                      isScrollable: true,
                      labelColor: Colors.black87,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        new Tab(text: "Event"),
                        new Tab(text: "NLP"),
                        new Tab(text: "Inspirasi"),
                        new Tab(text: "Tokoh"),
                        new Tab(text: "Properti"),
                        new Tab(text: "Ekonomi"),
                        new Tab(text: "Perbankan"),
                        new Tab(text: "Marketing")
                      ],
                    ),
                  ),
                  pinned: true,
                ),
              ];
            },
            body: TabBarView(
              children: <Widget>[
                //1
                Container(
                  margin: EdgeInsets.only(top: 0),
                  child: FutureBuilder(
                    future: _getBerita1(),
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
                            await new Future.delayed(
                                const Duration(seconds: 1));
                            setState(() {
                              list1.shuffle();
                            });
                          },
                          child: ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (BuildContext context, int index) {
                              var listTile = ListTile(
                                contentPadding: EdgeInsets.all(3.0),
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
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.grey),
                                ),
                                // trailing: IconButton(icon: Icon(FontAwesomeIcons.bookmark,),onPressed: (){
                                // },),

                                onTap: () {
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) => DetailBerita(
                                              snapshot.data[index].berita_id)));
                                },
                              );
                              return listTile;
                            },
                          ),
                        );
                      }
                    },
                  ),
                ),
                //2
                Container(
                  margin: EdgeInsets.only(top: 0),
                  child: FutureBuilder(
                    future: _getBerita2(),
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
                            await new Future.delayed(
                                const Duration(seconds: 1));
                            setState(() {
                              list2.shuffle();
                            });
                          },
                          child: ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                contentPadding: EdgeInsets.all(3.0),
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
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.grey),
                                ),
                                // trailing: IconButton(icon: Icon(FontAwesomeIcons.bookmark,),onPressed: (){
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
                //3
                Container(
                  margin: EdgeInsets.only(top: 0),
                  child: FutureBuilder(
                    future: _getBerita3(),
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
                            await new Future.delayed(
                                const Duration(seconds: 1));
                            setState(() {
                              list3.shuffle();
                            });
                          },
                          child: ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                contentPadding: EdgeInsets.all(3.0),
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
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.grey),
                                ),
                                // trailing: IconButton(icon: Icon(FontAwesomeIcons.bookmark,),onPressed: (){
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
                //4
                Container(
                  margin: EdgeInsets.only(top: 0),
                  child: FutureBuilder(
                    future: _getBerita4(),
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
                            await new Future.delayed(
                                const Duration(seconds: 1));
                            setState(() {
                              list4.shuffle();
                            });
                          },
                          child: ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                contentPadding: EdgeInsets.all(3.0),
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
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.grey),
                                ),
                                // trailing: IconButton(icon: Icon(FontAwesomeIcons.bookmark,),onPressed: (){
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
                //5
                Container(
                  margin: EdgeInsets.only(top: 0),
                  child: FutureBuilder(
                    future: _getBerita5(),
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
                            await new Future.delayed(
                                const Duration(seconds: 1));
                            setState(() {
                              list5.shuffle();
                            });
                          },
                          child: ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                contentPadding: EdgeInsets.all(3.0),
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
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.grey),
                                ),
                                // trailing: IconButton(icon: Icon(FontAwesomeIcons.bookmark,),onPressed: (){
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
                //6
                Container(
                  margin: EdgeInsets.only(top: 0),
                  child: FutureBuilder(
                    future: _getBerita6(),
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
                            await new Future.delayed(
                                const Duration(seconds: 1));
                            setState(() {
                              list6.shuffle();
                            });
                          },
                          child: ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                contentPadding: EdgeInsets.all(3.0),
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
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.grey),
                                ),
                                // trailing: IconButton(icon: Icon(FontAwesomeIcons.bookmark,),onPressed: (){
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
                //7
                Container(
                  margin: EdgeInsets.only(top: 0),
                  child: FutureBuilder(
                    future: _getBerita7(),
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
                            await new Future.delayed(
                                const Duration(seconds: 1));
                            setState(() {
                              list7.shuffle();
                            });
                          },
                          child: ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                contentPadding: EdgeInsets.all(3.0),
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
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.grey),
                                ),
                                // trailing: IconButton(icon: Icon(FontAwesomeIcons.bookmark,),onPressed: (){

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
                //8
                Container(
                  margin: EdgeInsets.only(top: 0),
                  child: FutureBuilder(
                    future: _getBerita8(),
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
                            await new Future.delayed(
                                const Duration(seconds: 1));
                            setState(() {
                              list8.shuffle();
                            });
                          },
                          child: ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                contentPadding: EdgeInsets.all(3.0),
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
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.grey),
                                ),
                                // trailing: IconButton(icon: Icon(FontAwesomeIcons.bookmark,),onPressed: (){

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
                ) //
              ],
            )),
      ),
      //
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
                title: new Text("Profil"),
                onTap: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => Akun()));
                }),
            new ListTile(
                leading: Icon(Icons.list),
                title: new Text("List Terbaru"),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => News()));
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
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => Setting()));
                }),
            new Divider(),
            new ListTile(
                leading: Icon(Icons.info),
                title: new Text("Tentang"),
                onTap: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => Tentang()));
                }),
            new ListTile(
                leading: Icon(Icons.power_settings_new),
                title: new Text("Logout"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.update),
        onPressed: () {},
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
