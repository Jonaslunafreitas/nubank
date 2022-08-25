// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class itemMenu extends StatelessWidget {
  final IconData icon;
  final String text;

  const itemMenu({super.key, required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.7, color: Colors.white54),
          top: BorderSide(width: 0.7, color: Colors.white54),
        ),
      ),
      child: RaisedButton(
        color: Colors.purple[800],
        highlightColor: Colors.transparent,
        elevation: 0,
        disabledElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        hoverElevation: 0,
        splashColor: Colors.purple[805],
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(icon),
                  SizedBox(
                    width: 15,
                  ),
                  Text(text, style: TextStyle(fontSize: 12)),
                ],
              ),
              Icon(
                Icons.chevron_right,
                size: 16,
              )
            ]),
        onPressed: () {},
      ),
    );
  }
}
