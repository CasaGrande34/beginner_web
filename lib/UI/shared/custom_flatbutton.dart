import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  /*	------------------------------------- */
  final String text;
  final Color color;
  final Function onPresed;
  /*	------------------------------------- */

  const CustomFlatButton(
      {Key? key, required this.text, required this.onPresed, this.color = Colors.pink, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: color,
      ),
      child:  Padding(
        padding:  const EdgeInsets.all(10.0),
        child: Text(text),
      ),
      onPressed: () => onPresed(),
    );
  }
}
