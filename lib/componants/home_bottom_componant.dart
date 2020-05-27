import 'package:flutter/material.dart';
import 'package:stitchwallert/widgets/tile.dart';

class BottomComponant extends StatelessWidget {
  const BottomComponant({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 2 - 41,
      // TODO : Replace with a listview builder
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overScroll) {
          overScroll.disallowGlow();
          return false;
        },
        child: ListView(
          children: <Widget>[
            Tile(
              size: size,
              message: 'Sent - 0779845287',
              amount: '\$20000',
            ),
            Tile(
              size: size,
              message: 'Recieved - 0779845287',
              amount: '\$200',
            ),
            Tile(
              size: size,
              message: 'Request - Cash out',
              amount: '\$500',
            ),
            Tile(
              size: size,
              message: 'Scan to Pay - Mechant',
              amount: '\$200',
            ),
            Tile(
              size: size,
              message: 'Cash in - Ecocash',
              amount: '\$20000',
            ),
            Tile(
              size: size,
              message: 'Cash in - OneMoney',
              amount: '\$200',
            ),
            Tile(
              size: size,
              message: 'Cash in - Bank',
              amount: '\$20000',
            ),
          ],
        ),
      ),
    );
  }
}
