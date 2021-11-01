import 'package:flutter/material.dart';
import 'package:flutter_horoscope_app/datas/horoscope_data.dart';
import 'package:flutter_horoscope_app/models/horoscope_model.dart';
import 'package:flutter_horoscope_app/widgets/horocope_listtile.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/";
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Burçlar"),
      ),
      body: ListView.builder(
          itemCount: horoscopes.length,
          itemBuilder: (BuildContext context, int index) {
            HoroscopeModel horoscope = horoscopes[index];
            return HoroscopeListTile(
                horoscopeModel: horoscope,
                onTap: () => {
                      Navigator.of(context)
                          .pushNamed('/detail', arguments: horoscope)
                    });
          }),
    );
  }
}
