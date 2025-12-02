import 'package:json_annotation/json_annotation.dart';
import 'package:my_flutter_pokedex/features/pokemon_list/domain/models/pokemon_detail/ability/pokemon_detail_abilities_model.dart';
import 'package:my_flutter_pokedex/features/pokemon_list/domain/models/pokemon_detail/base_stats/pokemon_detail_stats_model.dart';
import 'package:my_flutter_pokedex/features/pokemon_list/domain/models/pokemon_detail/move/pokemon_detail_moves_model.dart';
import 'package:my_flutter_pokedex/features/pokemon_list/domain/models/pokemon_detail/type/pokemon_detail_types_model.dart';

part 'pokemon_detail_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PokemonDetailModel {
  String? name;
  int? id;
  int? weight;
  int? height;
  List<PokemonDetailTypesModel>? types;
  List<PokemonDetailAbilitiesModel>? abilities;
  List<PokemonDetailMovesModel>? moves;
  List<PokemonDetailStatsModel>? stats;

  PokemonDetailModel({
    this.name,
    this.id,
    this.height,
    this.weight,
    this.types,
    this.abilities,
    this.moves,
    this.stats,
  });

  factory PokemonDetailModel.fromJson(json) => _$PokemonDetailModelFromJson(json);

  toJson() => _$PokemonDetailModelToJson(this);
}
