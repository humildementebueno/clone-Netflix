import 'package:flutter/material.dart';

class Nav_Bar_Up extends StatelessWidget {
  const Nav_Bar_Up({Key? key}) : super(key: key);
  final String logo_netflix = "assets/imgs/netflix.png";
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image(
          image: AssetImage(logo_netflix),
          width: 50,
          height: 50,
        ),
        Text(
          "Programas",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        Text(
          "Peliculas",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        Text(
          "Mi lista",
          style: TextStyle(color: Colors.white, fontSize: 15),
        )
      ],
    );
  }
}
