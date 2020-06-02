import 'package:flutter/material.dart';
import 'package:stitchwallert/utils/colors.dart';

class PillButton extends StatelessWidget {
  final String route;
  final String name;
  final Function onclick;
  const PillButton({
    Key key,
    this.name,
    this.route,
    this.onclick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Material(
        color: appColorOrange,
        child: InkWell(
          onTap: onclick,
          splashColor: appColorKhaki,
          child: Container(
            height: 40,
            width: 150,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 22.5,
                  ),
                  child: Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: appColorMaroon,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: appdarkShadowColor,
                          blurRadius: 3,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  name,
                  style: TextStyle(
                    color: appColorMaroon,
                    fontFamily: 'Nova',
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
