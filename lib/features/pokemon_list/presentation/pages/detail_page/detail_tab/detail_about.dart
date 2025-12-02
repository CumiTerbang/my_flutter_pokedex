import 'package:flutter/cupertino.dart';
import 'package:my_flutter_pokedex/shared/presentation/desc_row.dart';

class DetailAbout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DescRow(descKey: "Species", descValue: "xxxxxx"),
          DescRow(descKey: "Height", descValue: "xxxxxx"),
          DescRow(descKey: "Weight", descValue: "xxxxxx"),
          DescRow(descKey: "Abilities", descValue: "xxxxxx"),
          SizedBox(height: 16.0,),
          Text('Breeding', style: TextStyle(fontWeight:FontWeight.bold),),
          SizedBox(height: 16.0,),
          DescRow(descKey: "Gender", descValue: "xxxxxx"),
          DescRow(descKey: "Egg Groups", descValue: "xxxxxx"),
          DescRow(descKey: "Egg Cycle", descValue: "xxxxxx"),
        ],
      ),
    );
  }
}
