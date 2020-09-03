import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  @override //sobreescribe la clase

  List<Card> _buildGridCards(int count) {
    List<Card> cards = List.generate(
      count,
      (int index) => Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 18.0 / 11.0,
              child: Image.asset('assets/images/diamond.png'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Title'),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text('Secondary Text')
                ],
              ),
            )
          ],
        ),
      ),
    );
    return cards;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        // barra de navegacion
        appBar: AppBar(
          elevation: 0,
          brightness: Brightness.dark,
          backgroundColor: Color.fromRGBO(254, 219, 208, 1.0),
          //Iconos de busqueda y filtro
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search,
                  semanticLabel: 'search', color: Colors.black),
              onPressed: () {
                print('Search');
              },
            ),
            IconButton(
              icon: Icon(Icons.tune,
                  semanticLabel: 'filter', color: Colors.black),
              onPressed: () {
                print('filter');
              },
            ),
          ],

          //Icono de menu
          leading: IconButton(
            icon: Icon(Icons.menu, semanticLabel: 'menu', color: Colors.black),
            onPressed: () {
              print('Menu button');
            },
          ),
          title: Text(
            'STORE',
            style: TextStyle(color: Colors.black),
          ),
        ),

        //cuerpo
        body: GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.all(16.0),
            childAspectRatio: 8.0 / 9.0,

            //Tarjetas de ventas
            children: _buildGridCards(10)));
  }
}
