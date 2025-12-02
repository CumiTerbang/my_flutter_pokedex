import 'package:json_annotation/json_annotation.dart';
import 'package:my_flutter_pokedex/features/pokemon_list/domain/models/pokemon_detail/ability/pokemon_detail_ability_model.dart';
import 'package:my_flutter_pokedex/features/pokemon_list/domain/models/pokemon_detail/move/pokemon_detail_move_model.dart';

part 'pokemon_detail_abilities_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PokemonDetailAbilitiesModel{
  PokemonDetaiAbilityModel? ability;

  PokemonDetailAbilitiesModel({this.ability});

  factory PokemonDetailAbilitiesModel.fromJson(json) =>
      _$PokemonDetailAbilitiesModelFromJson(json);

  toJson() => _$PokemonDetailAbilitiesModelToJson(this);

  static List<PokemonDetailAbilitiesModel> fromJsonList(List? json) {
    return json?.map((e) => PokemonDetailAbilitiesModel.fromJson(e)).toList() ?? [];
  }

}