import 'package:flutter/cupertino.dart';
import 'package:my_flutter_pokedex/features/pokemon_list/domain/models/pokemon_detail/move/pokemon_detail_moves_model.dart';
import 'package:my_flutter_pokedex/shared/presentation/desc_row.dart';

class DetailMoves extends StatelessWidget{
  List<PokemonDetailMovesModel> moves;

  DetailMoves({Key? key, required this.moves}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          ...getMovesInfo(),
        ],
      ),
    );
  }

  List<Widget> getMovesInfo() {
    List<Widget> movesWidget = [];
    if(moves.isEmpty) return movesWidget;

    List<String> movesString = [];
    for(PokemonDetailMovesModel move in moves){
      movesString.add(move.move?.name ?? "");
    }

    movesWidget.add(DescRow(descKey: "Moves", descValue: movesString.join(", ")));
    return movesWidget;
  }

}