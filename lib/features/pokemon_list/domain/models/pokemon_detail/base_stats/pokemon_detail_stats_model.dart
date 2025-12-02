import 'package:json_annotation/json_annotation.dart';
import 'package:my_flutter_pokedex/features/pokemon_list/domain/models/pokemon_detail/base_stats/pokemon_detail_stat_model.dart';

part 'pokemon_detail_stats_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PokemonDetailStatsModel {
  int? base_stat;
  PokemonDetailStatModel? stat;

  PokemonDetailStatsModel({this.base_stat, this.stat});

  factory PokemonDetailStatsModel.fromJson(json) =>
      _$PokemonDetailStatsModelFromJson(json);

  toJson() => _$PokemonDetailStatsModelToJson(this);

  static List<PokemonDetailStatsModel> fromJsonList(List? json) {
    return json?.map((e) => PokemonDetailStatsModel.fromJson(e)).toList() ?? [];
  }

}