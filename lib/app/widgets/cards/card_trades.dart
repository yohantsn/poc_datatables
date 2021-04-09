import 'package:flutter/material.dart';

class CardTrades extends StatelessWidget {
  CardTrades(
      {this.color,
      this.iconSize,
      this.tradeVlaue,
      this.description,
      this.height,
      this.width,
      this.icon});

  final Color? color;
  final double? iconSize;
  final int? tradeVlaue;
  final String? description;
  final double? height;
  final double? width;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      //color: color!,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: color!,
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                child: FittedBox(
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  child: icon,
                )),
            Padding(
              padding: EdgeInsets.zero,
              child: FittedBox(
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  child: Text(
                    "$tradeVlaue",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                child: FittedBox(
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                    child: Text(
                      "$description",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ))),
          ],
        ),
      ),
    );
  }
}
