import 'package:json_annotation/json_annotation.dart';

part 'home_model.g.dart';

@JsonSerializable()
class HomeModel {
  @JsonKey(name: 'leagues')
  List<_Leagues> leagues;

  HomeModel(this.leagues);

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}

@JsonSerializable()
class _Leagues {
  _Leagues(this.id, this.leagueNam);

  factory _Leagues.fromJson(Map<String, dynamic> json) =>
      _$_LeaguesFromJson(json);

  @JsonKey(name: 'idLeague')
  String id;
  @JsonKey(name: 'strLeague')
  String leagueNam;
}
