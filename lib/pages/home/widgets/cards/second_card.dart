import 'package:flutter/material.dart';

class ThirdCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: <Widget>[
          Expanded(
              flex: 3,
              child: Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.credit_card,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Cartão de Crédito',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 20, bottom: 20),
                            child: SizedBox(
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'FATURA ATUAL',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Colors.teal,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(text: 'R\$ ', children: [
                                      TextSpan(
                                          text: '10',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          )),
                                      TextSpan(
                                          text: '.000',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          )),
                                      TextSpan(
                                          text: ',52',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ]),
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Colors.teal,
                                      fontSize: 30,
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                        text: 'Limite disponível ',
                                        children: [
                                          TextSpan(
                                              text: ' R\$ ',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green,
                                              )),
                                          TextSpan(
                                              text: '100',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green,
                                              )),
                                          TextSpan(
                                              text: '.000',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green,
                                              )),
                                          TextSpan(
                                              text: ',52',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green,
                                              )),
                                        ]),
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 12, bottom: 12, left: 10, right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Container(
                                  color: Colors.orange,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  color: Colors.blue,
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          width: 7,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
            flex: 1,
            child: Container(
              // ignore: sort_child_properties_last
              child: Padding(
                padding: const EdgeInsets.all(20),
                // ignore: prefer_const_literals_to_create_immutables
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.shopping_bag,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          'Compra mais recente Mercado Ricoy no valor de R\$ 80,00 Segunda',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.grey[400],
                        size: 20,
                      ),
                    ]),
              ),
              color: Colors.grey[200],
            ),
          ),
        ],
      ),
    );
  }
}
