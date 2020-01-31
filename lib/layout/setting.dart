import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Pengaturan"),
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            new ListTile(
              leading: Icon(Icons.notifications_active),
              title: Text("Push Notifikasi"),
              subtitle: Text("Pengaturan Notifikasi Berita terbaru"),
              trailing: IconButton(
                icon: Icon(Icons.check_box),
                onPressed: () {},
              ),
            ),
            new ListTile(
              leading: Icon(FontAwesomeIcons.music),
              title: Text("Nada Dering"),
              subtitle: Text("dering 1"),
            ),
            new ListTile(
              leading: Icon(Icons.ring_volume),
              title: Text("Kontak Kami"),
              subtitle: Text("+6213112"),
            ),
          ],
        ),
      ),
    );
  }
}
