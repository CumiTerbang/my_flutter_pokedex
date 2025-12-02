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
    return Container(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 100.0,
              child: Text(descKey)),
          SizedBox(width: 16.0,),
          Container(
            width: 200.0,
            child: Text(descValue,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
          ),
        ],
      ),
    );
  }

}