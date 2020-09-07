import 'package:coivd_app2/model/product.dart';
import 'package:coivd_app2/model/products_repository.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Feed extends StatelessWidget {
  @override //sobreescribe la clase

  List<Card> _buildGridCards(BuildContext context) {
    List<Product> products = ProductsRepository.loadProducts(Category.all);

    if (products == null || products.isEmpty) {
      return const <Card>[];
    }

    final ThemeData theme = Theme.of(context);
    final NumberFormat formatter = NumberFormat.simpleCurrency(
        locale: Localizations.localeOf(context).toString());

    return products.map((product) {
      return Card(
        clipBehavior: Clip.antiAlias,
        // TODO: Adjust card heights (103)
        child: Column(
          // TODO: Center items on the card (103)
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 18 / 11,
              child: Image.asset(
                product.assetName,
                package: product.assetPackage,
                // TODO: Adjust the box size (102)
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                child: Column(
                  // TODO: Align labels to the bottom and center (103)
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // TODO: Change innermost Column (103)
                  children: <Widget>[
                    // TODO: Handle overflowing labels (103)
                    Text(
                      product.name,
                      style: theme.textTheme.headline6,
                      maxLines: 1,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      formatter.format(product.price),
                      style: theme.textTheme.subtitle2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }).toList();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        // barra de navegacion
        appBar: AppBar(
          elevation: 3,
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
            children: _buildGridCards(context)));
  }
}
