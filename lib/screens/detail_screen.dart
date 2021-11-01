import 'package:flutter/material.dart';
import 'package:flutter_horoscope_app/models/horoscope_model.dart';

class DetailScreen extends StatefulWidget {
  static const String routeName = "/detail";
  final HoroscopeModel model;
  const DetailScreen({Key? key, required this.model}) : super(key: key);
  @override
  _DetailScreenState createState() => _DetailScreenState(model: model);
}

class _DetailScreenState extends State<DetailScreen> {
  final HoroscopeModel model;
  _DetailScreenState({required this.model});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              model.name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                model.dateRange,
                style: const TextStyle(
                    fontWeight: FontWeight.w300, fontSize: 18.0),
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: 15.0),
                margin: EdgeInsets.only(top: 24.0),
                child: Text(model.property)),
          ],
        ),
      ),
    );
  }
}
