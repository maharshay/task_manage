import 'package:flutter/material.dart';

Color bgColor = Colors.white;
Color textColor = Colors.black;

class ReusableCard extends StatefulWidget {
  ReusableCard({
    this.onPress,
    this.date,
    this.month,
  });

  //final Color colour;
  final int date;
  final String month;
  final Function onPress;

  @override
  _ReusableCardState createState() => _ReusableCardState();
}

class _ReusableCardState extends State<ReusableCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPress,
      child: Card(
        color: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 3,
        child: Container(
          height: 70,
          width: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                widget.date.toString(),
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
              Text(
                widget.month,
                style: TextStyle(
                  fontSize: 15,
                  color: textColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
