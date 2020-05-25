import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';
import 'package:stitchwallert/widgets/drawer_tile.dart';
import 'package:stitchwallert/widgets/drawer_tile_log_out.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      semanticLabel: 'Options Drawer',
      child: Container(
        color: appColorBlack,
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            Container(
              height: size.height / 2,
              color: appColorMaroon,
            ),
            // TODO : update routes here
            DrawerTile(
              name: 'Notifications',
              route: 'notifications',
            ),
            DrawerTile(
              name: 'Cash In',
              route: '',
            ),
            DrawerTile(
              name: 'Cash Out',
              route: '',
            ),
            DrawerTile(
              name: 'Send Money',
              route: '',
            ),
            DrawerTile(
              name: 'Scan To Pay',
              route: '',
            ),
            DrawerTile(
              name: 'History',
              route: '',
            ),
            DrawerTile(
              name: 'Settings',
              route: '',
            ),
            DrawerTileLogOut(
              name: 'Log Out',
              route: 'login',
            ),
          ],
        ),
      ),
    );
  }
}
