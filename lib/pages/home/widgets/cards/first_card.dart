// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class FirstCard extends StatefulWidget {
  @override
  State<FirstCard> createState() => _FirstCardState();
}

class _FirstCardState extends State<FirstCard> {
  bool _buttonPressed = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.celebration_outlined,
            color: Colors.black,
            size: 35,
          ),
          Column(
            children: [
              Text('Nubank Rewards',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 26)),
              SizedBox(
                height: 15,
              ),
              Text(
                  'Acumule pontos que nunca expiram e troque por passagem aéreas ou serviços que voce realmente usa.',
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                  textAlign: TextAlign.center),
            ],
          ),

          // ignore: deprecated_member_use
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(width: 0.7, color: Colors.purple)),
            child: RaisedButton(
                onHighlightChanged: (pressed) {
                  setState(() {
                    _buttonPressed = pressed;
                  });
                },
                child: Text(
                  'ATIVE O SEU REWARDS',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                highlightColor: Colors.purple[800],
                disabledTextColor: Colors.purple[800],
                textColor: _buttonPressed ? Colors.white : Colors.purple[800],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3)),
                color: Colors.transparent,
                elevation: 0,
                disabledElevation: 0,
                focusElevation: 0,
                highlightElevation: 0,
                hoverElevation: 0,
                onPressed: (() {})),
          )
        ],
      ),
    );
  }
}
