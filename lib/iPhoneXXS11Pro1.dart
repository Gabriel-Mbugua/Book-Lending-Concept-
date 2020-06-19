import 'package:flutter/material.dart';

class iPhoneXXS11Pro1 extends StatelessWidget {
  iPhoneXXS11Pro1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(-67.0, -67.0),
            child: Container(
              width: 179.0,
              height: 167.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(89.5, 83.5)),
                color: const Color(0xfffdebb2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
