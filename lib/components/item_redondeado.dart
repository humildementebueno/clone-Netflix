import 'package:flutter/material.dart';

class Item_Redondeado extends StatelessWidget {
  String image_mov1 =
      "https://th.bing.com/th/id/OIP.0J1ftgpqI0FnTYd8cDD9cgHaEK?pid=ImgDet&rs=1";
  String image_mov2 =
      "https://wallpaperfx.com/view_image/warcraft-movie-2016-1280x800-wallpaper-17349.jpg";
  String image_mov3 = "";
  String image_mov4 = "";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(110),
                border: Border.all(
                  color: Colors.yellow,
                  width: 2.0,
                ),
              ),
              child: ClipOval(
                child: Image.network(
                  image_mov1,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Image.network(
              image_mov2,
              scale: 18,
            ),
          ],
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
