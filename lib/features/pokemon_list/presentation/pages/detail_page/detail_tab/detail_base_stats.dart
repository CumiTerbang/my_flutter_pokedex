import 'package:flutter/cupertino.dart';
import 'package:my_flutter_pokedex/shared/presentation/desc_row.dart';

class DetailBaseStats extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DescRow(descKey: "HP", descValue: "xxxxxx"),
          DescRow(descKey: "Attack", descValue: "xxxxxx"),
          DescRow(descKey: "Defense", descValue: "xxxxxx"),
          DescRow(descKey: "Sp. Attack", descValue: "xxxxxx"),
          DescRow(descKey: "Sp. Def", descValue: "xxxxxx"),
          DescRow(descKey: "Speed", descValue: "xxxxxx"),
          DescRow(descKey: "Total", descValue: "xxxxxx"),
          SizedBox(height: 16.0,),
          Text('Type Defenses', style: TextStyle(fontWeight:FontWeight.bold),),
          SizedBox(height: 16.0,),
          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit')

        ],
      ),
    );
  }


}