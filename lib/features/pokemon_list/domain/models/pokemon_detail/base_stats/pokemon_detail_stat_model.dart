import 'package:json_annotation/json_annotation.dart';

part 'pokemon_detail_stat_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PokemonDetailStatModel {
  String? name;

  PokemonDetailStatModel({this.name});

  factory PokemonDetailStatModel.fromJson(json) =>
      _$PokemonDetailStatModelFromJson(json);

  toJson() => _$PokemonDetailStatModelToJson(this);

  static List<PokemonDetailStatModel> fromJsonList(List? json) {
    return json?.map((e) => PokemonDetailStatModel.fromJson(e)).toList() ?? [];
  }

}