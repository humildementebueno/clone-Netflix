import 'package:flutter/material.dart';
import 'package:netflix/components/nav_bar_up.dart';

import 'item_redondeado.dart';

class Main_Poster extends StatelessWidget {
  String cartel_fondo =
      "https://www.bravo.de/assets/field/image/how_to_sell_drugs_online_fast_netflix_serie_alle_infos.jpg";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        cabecera(),
        infoSerie(),
        botonera(),
      ],
    );
  }

  Widget botonera() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(
                Icons.check,
                color: Colors.white,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "Mi lista",
                style: TextStyle(color: Colors.white, fontSize: 10),
              )
            ],
          ),
          FlatButton.icon(
            color: Colors.white,
            onPressed: () {},
            icon: Icon(Icons.play_arrow),
            label: Text("Reproducir"),
          ),
          Column(
            children: [
              Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "Informacion",
                style: TextStyle(color: Colors.white, fontSize: 10),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget infoSerie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Telenovelesco",
          style: TextStyle(color: Colors.white, fontSize: 9),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          "Suspenso insostenible",
          style: TextStyle(color: Colors.white, fontSize: 9),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          "De suspenso",
          style: TextStyle(color: Colors.white, fontSize: 9),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5,
        ),
        Text(
          "Adoles",
          style: TextStyle(color: Colors.white, fontSize: 9),
        ),
      ],
    );
  }

  Widget cabecera() {
    return Stack(
      children: [
        Image.network(
          cartel_fondo,
          width: double.infinity,
          height: 350,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 350,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              /**empieza el degradado desde el centro y termina hacia abajo */
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black38,
                Colors.black,
              ],
            ),
          ),
        ),
        SafeArea(
          child: Nav_Bar_Up(),
        ),
      ],
    );
  }
}
