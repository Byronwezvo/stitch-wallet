import 'package:flutter/material.dart';
import 'package:stitchwallert/screens/send_money_screen.dart';
import 'package:stitchwallert/utils/colors.dart';
import 'package:stitchwallert/utils/overwrite_glow_color.dart';
import 'package:stitchwallert/widgets/drawer_tile.dart';
import 'package:stitchwallert/widgets/drawer_tile_log_out.dart';

class LeftDrawer extends StatelessWidget {
  final String mobile;
  const LeftDrawer({
    Key key,
    this.mobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      semanticLabel: 'Options Drawer',
      child: Container(
        color: appColorBlack,
        child: GlowingOverscrollColorChanger(
          color: appColorOrange,
          child: ListView(
            padding: EdgeInsets.all(0),
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: size.height / 2,
                    color: appColorBlack,
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: size.height / 10,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Image.asset(
                            'assets/images/appicon.png',
                            height: (size.width / 3),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'The perfect wallet.',
                        style: TextStyle(
                          fontFamily: 'Nova',
                          fontSize: 15,
                          color: appColorPeach,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // TODO : update builderFunctions here
              DrawerTile(
                name: 'Notifications',
                route: null,
              ),
              DrawerTile(
                name: 'Cash In',
                route: null,
              ),
              DrawerTile(
                name: 'Cash Out',
                route: null,
              ),
              DrawerTile(
                name: 'Send Money',
                route: SendMoneyScreen(
                  mobile: mobile,
                ),
              ),
              DrawerTile(
                name: 'Scan To Pay',
                route: null,
              ),
              DrawerTile(
                name: 'History',
                route: null,
              ),
              DrawerTile(
                name: 'Settings',
                route: null,
              ),
              DrawerTileLogOut(
                name: 'Log Out',
                route: 'login',
                mobile: mobile,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
