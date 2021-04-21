import 'package:flutter/material.dart';
import 'screen_size.dart';

class UserData extends StatelessWidget {
  String userName = 'Elon Musk';
  String pathImage = 'assets/img/elon.jpg';
  String userData = 'Experience: 7 years';
  bool enable = true;

  // Size screenSize(BuildContext context) {
  //   return MediaQuery.of(context).size;
  // }

  // double screenHeight(BuildContext context) {
  //   return screenSize(context).height;
  // }

  // double screenWidth(BuildContext context) {
  //   return screenSize(context).width;
  // }

  UserData(this.userName, this.userData, this.pathImage, this.enable);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    //
    //

    final photo = Container(
        height: 60,
        width: 60,
        margin: EdgeInsets.only(right: 20, left: 20),
        child: DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(pathImage),
              fit: BoxFit.cover,
            ),
          ),
        ));

    final text = Container(
      margin: EdgeInsets.only(),
      height: 80,
      width: screenWidth(context) - 190,
      child: Container(
        margin: EdgeInsets.only(top: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              userName,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Text(
              userData,
              style: TextStyle(
                color: Colors.black38,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );

    final icon = Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: enable ? Colors.red : Colors.black12,
        ),
        margin: EdgeInsets.only(),
        child: Center(
          child: Container(
            child: Icon(
              Icons.mail,
              color: enable ? Colors.white : Colors.black45,
              size: 25,
            ),
          ),
        )

        // height: 80,
        );

    return Container(
      margin: EdgeInsets.only(top: 0, bottom: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          photo,
          text,
          icon,
        ],
      ),
    );
  }
}
