// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return HomeModel(
    (json['leagues'] as List)
        ?.map((e) =>
            e == null ? null : _Leagues.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
      'leagues': instance.leagues,
    };

_Leagues _$_LeaguesFromJson(Map<String, dynamic> json) {
  return _Leagues(
    json['idLeague'] as String,
    json['strLeague'] as String,
  );
}

Map<String, dynamic> _$_LeaguesToJson(_Leagues instance) => <String, dynamic>{
      'idLeague': instance.id,
      'strLeague': instance.leagueNam,
    };
