import 'package:flutter/material.dart';

class SecondCard extends StatefulWidget {
  @override
  _SecondCardState createState() => _SecondCardState();
}

class _SecondCardState extends State<SecondCard> with AutomaticKeepAliveClientMixin {
  bool _showSaldo = false;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.attach_money, color: Colors.grey),
                            SizedBox(width: 5),
                            Text(
                              'Conta',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                            )
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _showSaldo = !_showSaldo;
                            });
                          },
                          child: Icon(
                            !_showSaldo
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey,
                            semanticLabel: 'eye',
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Saldo disponível',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                          _showSaldo ? Text.rich(
                            TextSpan(text: 'R\$ 10.000,00'),
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black, fontSize: 28),
                          ) : Container(height: 32, width: 160,color: Colors.grey[300],),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.credit_card, color: Colors.grey),
                    SizedBox(width: 10),
                    Flexible(
                      child: Text(
                        'Compra mais recente em Supermercado no valor de R\$ 150.00 segunda',
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.grey[400],
                      size: 18,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
