import 'package:flutter_app/models/home_model.dart';

import 'api.dart';

class Repository {
  final api = Api();

  Future<HomeModel> getHomeModel() => api.fetchHome();
  Future<HomeModel> getDetail() => api.fetchHome();
}
