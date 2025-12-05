import 'package:flutter/cupertino.dart';
import 'package:my_flutter_pokedex/shared/presentation/desc_row.dart';

class DetailEvolution extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DescRow(descKey: "Species", descValue: "xxxxxx"),
            DescRow(descKey: "Height", descValue: "xxxxxx"),
            DescRow(descKey: "Weight", descValue: "xxxxxx"),
            DescRow(descKey: "Abilities", descValue: "xxxxxx"),
          ],
        ),
      ),
    );
  }

}