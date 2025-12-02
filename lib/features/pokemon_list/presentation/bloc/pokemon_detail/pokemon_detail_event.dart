part of 'pokemon_detail_bloc.dart';

class PokemonDetailEvent {
  const PokemonDetailEvent();
}

class OnGettingPokemonDetailEvent extends PokemonDetailEvent{
  final bool withLoading;
  final String name;
  OnGettingPokemonDetailEvent({this.withLoading = true, required this.name});
}