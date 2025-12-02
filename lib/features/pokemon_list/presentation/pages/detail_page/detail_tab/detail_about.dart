import 'package:flutter/cupertino.dart';
import 'package:my_flutter_pokedex/shared/presentation/desc_row.dart';

class DetailAbout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DescRow(descKey: "Species", descValue: "xxxxxx"),
        DescRow(descKey: "Height", descValue: "xxxxxx"),
        DescRow(descKey: "Weight", descValue: "xxxxxx"),
        DescRow(descKey: "Abilities", descValue: "xxxxxx"),
      ],
    );
  }
}
