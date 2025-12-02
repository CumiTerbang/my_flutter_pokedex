import 'package:flutter/cupertino.dart';
import 'package:my_flutter_pokedex/features/pokemon_list/domain/models/pokemon_detail/ability/pokemon_detail_abilities_model.dart';
import 'package:my_flutter_pokedex/shared/presentation/desc_row.dart';

class DetailAbout extends StatelessWidget {
  int? weight;
  int? height;
  List<PokemonDetailAbilitiesModel> abilities;

  DetailAbout({
    Key? key,
    required this.weight,
    required this.height,
    required this.abilities,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // DescRow(descKey: "Species", descValue: "xxxxxx"),
          DescRow(descKey: "Height", descValue: getHeightDecimeterToMeter() + " m"),
          DescRow(descKey: "Weight", descValue: getWeightHektogramToKilogram() + " kg"),
          DescRow(descKey: "Abilities", descValue: getAbilitiesString()),
          // SizedBox(height: 16.0,),
          // Text('Breeding', style: TextStyle(fontWeight:FontWeight.bold),),
          // SizedBox(height: 16.0,),
          // DescRow(descKey: "Gender", descValue: "xxxxxx"),
          // DescRow(descKey: "Egg Groups", descValue: "xxxxxx"),
          // DescRow(descKey: "Egg Cycle", descValue: "xxxxxx"),
        ],
      ),
    );
  }

  String getAbilitiesString() {
    if(abilities.isEmpty) return "";

    List<String> abilitiesString = [];

    for (PokemonDetailAbilitiesModel item in abilities) {
      String ability = item.ability?.name ?? "";
      if (ability.isNotEmpty) {
        abilitiesString.add(ability);
      }
    }

    return abilitiesString.join(", ");
  }

  String getWeightHektogramToKilogram() {
    return ((weight?.toDouble() ?? 1.0) / 10).toString();
  }

  String getHeightDecimeterToMeter() {
    return ((height?.toDouble() ?? 1.0) / 10).toString();
  }
}
