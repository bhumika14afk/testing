import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('abc'),
            accountEmail: Text('abc@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                  child: (Image.network(
                'https://www.logolynx.com/images/logolynx/s_4b/4beebce89d681837ba2f4105ce43afac.png',
                height: 90,
                width: 90,
                fit: BoxFit.cover,
              ))),
            ),
            decoration: BoxDecoration(color: Color(0xff00529e)),
          ),
          ListTile(
            title: Text('Preferences'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Order a replacement card'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('My Clubcard Account'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Apple Wallet'),
            onTap: () => null,
          ),
          ListTile(
            title: Text('Help & Support'),
            onTap: () => null,
          ),
          ListTile(
            title: Text('More from Tesco'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Give app feedback'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app_outlined),
            title: Text('Sign Out'),
            onTap: () {
              Navigator.pushNamed(context, 'login');
            },
          ),
        ],
      ),
    );
  }
}
