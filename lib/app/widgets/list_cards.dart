import 'package:flutter/material.dart';
import 'cards/card_trades.dart';

class ListCards extends StatelessWidget {
  ListCards({this.width, this.height});
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        CardTrades(
          color: Color(0xFFf8cb00),
          icon: Icon(
            Icons.person_outline,
            color: Colors.white,
            size: MediaQuery.of(context).size.height * 0.05,
          ),
          height: height,
          width: width! * (1 / 5),
          tradeVlaue: 0,
          description: "BackOffice",
        ),
        CardTrades(
          color: Color(0xFF20a8d8),
          icon: Icon(
            Icons.book_outlined,
            color: Colors.white,
            size: MediaQuery.of(context).size.height * 0.05,
          ),
          height: height,
          width: width! * (1 / 5),
          tradeVlaue: 0,
          description: "Clearing",
        ),
        CardTrades(
          color: Color(0xFF20a8d8),
          icon: Icon(
            Icons.monetization_on_outlined,
            color: Colors.white,
            size: MediaQuery.of(context).size.height * 0.05,
          ),
          height: height,
          width: width! * (1 / 5),
          tradeVlaue: 0,
          description: "Conta Corrente",
        ),
        CardTrades(
          color: Color(0xFF20a8d8),
          icon: Icon(
            Icons.museum_sharp,
            color: Colors.white,
            size: MediaQuery.of(context).size.height * 0.05,
          ),
          height: height,
          width: width! * (1 / 5),
          tradeVlaue: 0,
          description: "SPR",
        ),
        CardTrades(
          color: Color(0xFF4dbd74),
          icon: Icon(
            Icons.done,
            color: Colors.white,
            size: MediaQuery.of(context).size.height * 0.05,
          ),
          height: height,
          width: width! * (1 / 5),
          tradeVlaue: 0,
          description: "Finalizadas",
        ),
      ],
    );
  }
}
