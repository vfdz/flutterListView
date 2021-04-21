import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();

    final title = Container(
      height: 80,
      child: Center(
        child: Text(
          'DESIGNERS',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );

    final icon = Container(
      margin: EdgeInsets.only(top: 18, left: 30),
      child: Icon(
        Icons.menu,
        color: Colors.white,
        size: 40,
      ),
    );

    final headerArea = ClipPath(
        clipper: MyClipper(),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black,
                Colors.black45,
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp,
            ),
          ),
          // child: ,
        ));

    final headerbox = Stack(
      children: [
        headerArea,
        icon,
        title,
      ],
    );

    return headerbox;
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    // throw UnimplementedError();
    var path = Path();
    path.lineTo(0.0, size.height - 30);

    var firstControlPoint = Offset(size.width / 6, size.height - 30);
    var firstEndPoint = Offset(size.width / 3, size.height - 15);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width / 2, size.height);
    var secondEndPoint = Offset(size.width - size.width / 3, size.height - 15);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    var thirdControlPoint =
        Offset(size.width - size.width / 6, size.height - 30);
    var thirdEndPoint = Offset(size.width, size.height - 30);

    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return null;
  }
}
