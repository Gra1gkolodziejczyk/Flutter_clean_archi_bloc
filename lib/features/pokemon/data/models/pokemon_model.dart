import 'package:flutter_clean_archi_bloc/features/pokemon/domain/entities/pokemon_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pokemon_model.g.dart';

@JsonSerializable()
class PokemonResponseModel extends PokemonResponseEntity {
  final double? id;
  final String? num;
  final String? name;
  final String? img;
  
  const PokemonResponseModel({
    this.id,
    this.num,
    this.name,
    this.img,
  }) : super(
    id: id,
    num: num,
    name: name,
    img: img,
  );

  factory PokemonResponseModel.fromJson(Map<String, dynamic> json) => 
    _$PokemonResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonResponseModelToJson(this);

  factory PokemonResponseModel.fromEntity(PokemonResponseEntity entity) {
    return PokemonResponseModel(
      id: entity.id,
      num: entity.num,
      name: entity.name,
      img: entity.img,
    );
  }
}