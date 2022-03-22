import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  static const String id = "side_bar";

  const SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  "https://pixy.org/src2/597/thumbs350/5979737.jpg",
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            accountName: Text("Zamon"),
            accountEmail: Text("zamon@gmail.com"),
            decoration: const BoxDecoration(
              //color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                  'https://avatars.mds.yandex.net/i?id=3d0a150e9a82678171c0ffd54166797b-5877601-images-thumbs&n=13',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorites'),
            onTap: () => print('favorite'),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Friends'),
            onTap: () => print('friends'),
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () => print('favorite'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            onTap: () => print('Request'),
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                child: Center(
                  child: Text(
                    "9",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                width: 21,
                height: 21,
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => print('settings'),
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Policicy'),
            onTap: () => print('policy'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Exit'),
            onTap: () => print('exit'),
          ),
        ],
      ),
    );
  }
}
