// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonDetailStatsModel _$PokemonDetailStatsModelFromJson(
  Map<String, dynamic> json,
) => PokemonDetailStatsModel(
  base_stat: (json['base_stat'] as num?)?.toInt(),
  stat: json['stat'] == null
      ? null
      : PokemonDetailStatModel.fromJson(json['stat']),
);

Map<String, dynamic> _$PokemonDetailStatsModelToJson(
  PokemonDetailStatsModel instance,
) => <String, dynamic>{'base_stat': instance.base_stat, 'stat': instance.stat};
