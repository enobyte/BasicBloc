import 'package:flutter_app/models/home_model.dart';
import 'package:flutter_app/provider/repository.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc {
  final _repo = Repository();
  final _home = BehaviorSubject<HomeModel>();

  Stream<HomeModel> get homeStream => _home.stream;

  fetchHome() async {
    HomeModel model = await _repo.getHomeModel();
    _home.sink.add(model);
  }

  dispose() {
    _home.close();
  }
}

final bloc = HomeBloc();