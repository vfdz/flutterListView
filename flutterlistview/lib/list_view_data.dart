import 'package:flutter/material.dart';
import 'userdata.dart';

class ListViewData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    //
    return Container(
      margin: EdgeInsets.only(top: 100),
      child: ListView(
        children: [
          UserData(
              'Elon Musk', 'Experience: 7 years', 'assets/img/elon.jpg', true),
          Divider(),
          UserData(
              'Elon Musk', 'Experience: 5 years', 'assets/img/elon.jpg', false),
          Divider(),
          UserData(
              'Elon Musk', 'Experience: 6 years', 'assets/img/elon.jpg', true),
          Divider(),
          UserData(
              'Elon Musk', 'Experience: 2 years', 'assets/img/elon.jpg', true),
          Divider(),
          UserData(
              'Elon Musk', 'Experience: 3 years', 'assets/img/elon.jpg', true),
          Divider(),
          UserData(
              'Elon Musk', 'Experience: 7 years', 'assets/img/elon.jpg', true),
          Divider(),
          UserData(
              'Elon Musk', 'Experience: 8 years', 'assets/img/elon.jpg', false),
          Divider(),
          UserData(
              'Elon Musk', 'Experience: 3 years', 'assets/img/elon.jpg', false),
          Divider(),
          UserData(
              'Elon Musk', 'Experience: 1 years', 'assets/img/elon.jpg', true),
          Divider(),
          UserData(
              'Elon Musk', 'Experience: 2 years', 'assets/img/elon.jpg', true),
          Divider(),
          UserData(
              'Elon Musk', 'Experience: 7 years', 'assets/img/elon.jpg', false),
          Divider(),
          UserData(
              'Elon Musk', 'Experience: 4 years', 'assets/img/elon.jpg', true),
          Divider(),
          UserData(
              'Elon Musk', 'Experience: 7 years', 'assets/img/elon.jpg', false),
        ],
      ),
    );
  }
}

//
