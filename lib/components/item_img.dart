import 'package:flutter/material.dart';

class ItemImg extends StatelessWidget {
  String imagen =
      "https://th.bing.com/th/id/OIP.BAJ55ZrLU254HUhnDXKK_AHaK5?pid=ImgDet&rs=1";
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          imagen,
          width: 100,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
