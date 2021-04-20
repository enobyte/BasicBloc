import 'package:flutter/material.dart';
import 'package:flutter_app/bloc/home_bloc.dart';
import 'package:flutter_app/models/home_model.dart';
import 'package:flutter_app/ui/detail_ui.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    bloc.fetchHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 70,
            child: Container(
              child: StreamBuilder<HomeModel>(
                  stream: bloc.homeStream,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView(
                        children: snapshot.data.leagues
                            .map((e) => _data(e.leagueNam))
                            .toList(),
                      );
                    } else {
                      return CircularProgressIndicator();
                    }
                  }),
            ),
          ),
          Flexible(
              flex: 30,
              child: ElevatedButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailUI())),
                  child: Text("Detail")))
        ],
      ),
    );
  }

  Widget _data(String snapshot) {
    return Text(snapshot);
  }
}
