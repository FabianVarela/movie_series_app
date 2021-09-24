import 'package:equatable/equatable.dart';

class GendersModel extends Equatable {
  GendersModel.fromJson(Map<String, dynamic> json)
      : genders = json['genres'] == null
            ? <GenderModel>[]
            : (json['genres'] as List<dynamic>)
                .map((dynamic item) =>
                    GenderModel.fromJson(item as Map<String, dynamic>))
                .toList();

  final List<GenderModel> genders;

  @override
  List<Object?> get props => [genders];
}

class GenderModel extends Equatable {
  GenderModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        name = json['name'] as String;

  final int id;
  final String name;

  @override
  List<Object> get props => [id, name];
}
