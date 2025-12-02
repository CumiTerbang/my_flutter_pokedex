import 'package:flutter/cupertino.dart';
import 'package:my_flutter_pokedex/features/pokemon_list/domain/models/pokemon_detail/base_stats/pokemon_detail_stats_model.dart';
import 'package:my_flutter_pokedex/shared/presentation/desc_row.dart';

class DetailBaseStats extends StatelessWidget {
  List<PokemonDetailStatsModel> stats;

  DetailBaseStats({Key? key, required this.stats}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...getBaseStatInfo(),
          // DescRow(descKey: "Total", descValue: "xxxxxx"),
          // SizedBox(height: 16.0,),
          // Text('Type Defenses', style: TextStyle(fontWeight:FontWeight.bold),),
          // SizedBox(height: 16.0,),
          // Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit')
        ],
      ),
    );
  }

  List<Widget> getBaseStatInfo() {
    List<Widget> statsWidget = [];
    if (stats.isEmpty) return statsWidget;

    for (PokemonDetailStatsModel stat in stats) {
      String name = stat.stat?.name ?? "";
      statsWidget.add(
        DescRow(
          descKey: name == "hp"
              ? "HP"
              : name.replaceFirst(name[0], name[0].toUpperCase()),
          descValue: stat.base_stat.toString(),
        ),
      );
    }

    return statsWidget;
  }
}
