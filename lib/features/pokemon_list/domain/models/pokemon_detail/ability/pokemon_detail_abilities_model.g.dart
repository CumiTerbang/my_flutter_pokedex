// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_abilities_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonDetailAbilitiesModel _$PokemonDetailAbilitiesModelFromJson(
  Map<String, dynamic> json,
) => PokemonDetailAbilitiesModel(
  ability: json['ability'] == null
      ? null
      : PokemonDetaiAbilityModel.fromJson(json['ability']),
);

Map<String, dynamic> _$PokemonDetailAbilitiesModelToJson(
  PokemonDetailAbilitiesModel instance,
) => <String, dynamic>{'ability': instance.ability};
