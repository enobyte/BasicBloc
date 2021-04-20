import 'package:flutter/material.dart';
import 'package:flutter_app/bloc/home_bloc.dart';
import 'package:flutter_app/models/home_model.dart';

class DetailUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailUIState();
  }
}

class DetailUIState extends State<DetailUI> {
  @override
  void initState() {
    super.initState();
    bloc.homeStream.listen((event) {
      print("========>" + event.leagues.last.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
    );
  }

  Widget _data(String snapshot) {
    return Text(snapshot);
  }
}
