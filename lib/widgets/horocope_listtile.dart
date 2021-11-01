import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_horoscope_app/models/horoscope_model.dart';

class HoroscopeListTile extends StatelessWidget {
  final HoroscopeModel horoscopeModel;
  final VoidCallback onTap;
  const HoroscopeListTile(
      {Key? key, required this.horoscopeModel, required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(horoscopeModel.name),
      subtitle: Text(horoscopeModel.dateRange),
      trailing: const Icon(Icons.arrow_forward_ios_sharp),
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Image(
          image: AssetImage(horoscopeModel.smallImage),
        ),
      ),
    );
  }
}
