import 'package:flutter/material.dart';
import 'package:netflix/components/item_img.dart';
import 'package:netflix/components/item_redondeado.dart';
import 'package:netflix/components/main_poster.dart';

class HomePages extends StatelessWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Main_Poster(),
          listaHorizontal("Avances", Item_Redondeado(), 9),
          SizedBox(
            height: 10,
          ),
          listaHorizontal("Programas sobre viajes", ItemImg(), 10),
          SizedBox(
            height: 10,
          ),
          listaHorizontal("Tendencias", ItemImg(), 10),
          SizedBox(
            height: 10,
          ),
          listaHorizontal("Mi lista", ItemImg(), 10),
          SizedBox(
            height: 20,
          ),
        ],
      ),
      bottomNavigationBar: nav_down(),
    );
  }

  BottomNavigationBar nav_down() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text(
            "Inicio",
            style: TextStyle(fontSize: 12),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text(
            "Buscar",
            style: TextStyle(fontSize: 12),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_music),
          title: Text(
            "Proximament",
            style: TextStyle(fontSize: 12),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_downward),
          title: Text(
            "Descargas",
            style: TextStyle(fontSize: 12),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          title: Text(
            "Mas",
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }

  Widget listaHorizontal(String titulo, Widget item, int cantidad) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
          child: Text(
            titulo,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        Container(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cantidad,
              itemBuilder: (context, index) {
                return item;
              },
            )),
      ],
    );
  }
}
