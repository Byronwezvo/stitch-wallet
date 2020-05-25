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
      child: ListView(
        children: <Widget>[
          Tile(
            size: size,
            message: 'Sent money - 079845287',
            amount: '\$20.00',
          ),
          Tile(
            size: size,
            message: 'Sent money - 079845287',
            amount: '\$20000.00',
          ),
          Tile(
            size: size,
            message: 'Sent money - 079845287',
            amount: '\$20.00',
          ),
          Tile(
            size: size,
            message: 'Sent money - 079845287',
            amount: '\$20.00',
          ),
          Tile(
            size: size,
            message: 'Sent money - 079845287',
            amount: '\$20.00',
          ),
          Tile(
            size: size,
            message: 'Sent money - 079845287',
            amount: '\$20.00',
          ),
          Tile(
            size: size,
            message: 'Sent money - 079845287',
            amount: '\$20.00',
          ),
          Tile(
            size: size,
            message: 'Sent money - 079845287',
            amount: '\$20.00',
          ),
          Tile(
            size: size,
            message: 'Sent money - 079845287',
            amount: '\$20.00',
          ),
        ],
      ),
    );
  }
}
