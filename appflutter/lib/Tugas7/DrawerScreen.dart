import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawwerScreenState createState() => _DrawwerScreenState();
}

class _DrawwerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Sansan Ramadhani"),
            currentAccountPicture:
                CircleAvatar(backgroundImage: AssetImage("../../asset/img/san.JPEG")),
            accountEmail: Text("Sansan.084020005@unpak.ac.id"),
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: "NewGrup",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.lock,
            title: "New Secret Group",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.notifications,
            title: "New Chanel Chat",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.contacts,
            title: "contacts",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.bookmark_border,
            title: "Saved Message",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.phone,
            title: "Calls",
            onTilePressed: () {},
          )
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData? iconData;
  final String? title;
  final VoidCallback? onTilePressed;



  const DrawerListTile(
    {Key? key, this.iconData, this.title, this.onTilePressed})
    :super(key: key);
    
    @override
    Widget build(BuildContext context) {
      return ListTile( 
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title!,
        style: TextStyle(fontSize: 16),
      ),
      );
    }
}
