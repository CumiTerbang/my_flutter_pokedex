import 'package:flutter/cupertino.dart';

class DescRow extends StatelessWidget{
  final String descKey;
  final String descValue;

  DescRow({
    Key? key,
    required this.descKey,
    required this.descValue,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(descKey),
        Text(descValue,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),),
      ],
    );
  }

}