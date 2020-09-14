import 'package:coivd_app2/model/product.dart';
import 'package:coivd_app2/model/products_repository.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:coivd_app2/colors.dart';
import 'backdrop.dart';
import 'category_menu_page.dart';

class Base extends StatefulWidget {
  @override
  _BaseState createState() => _BaseState();
}

class _BaseState extends State<Base> {
  Category _currentCategory = Category.all;

  void _onCategoryTap(Category category) {
    setState(() {
      _currentCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      // TODO: Change home: to a Backdrop with a HomePage frontLayer (104)
      home: Backdrop(
        // TODO: Make currentCategory field take _currentCategory (104)
        currentCategory: Category.all,
        // TODO: Pass _currentCategory for frontLayer (104)
        frontLayer: Feed(),
        // TODO: Change backLayer field value to CategoryMenuPage (104)
        backLayer: CategoryMenuPage(
          currentCategory: _currentCategory,
          onCategoryTap: _onCategoryTap,
        ),
        frontTitle: Text('SHRINE'),
        backTitle: Text('MENU'),
      ),
      // TODO: Add a theme (103)
    );
  }
}

class Feed extends StatelessWidget {
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
        // ignore: todo
        // TODO: Adjust card heights (103)
        child: Column(
          // ignore: todo
          // TODO: Center items on the card (103)
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 18 / 11,
              child: Image.asset(
                product.assetName,
                package: product.assetPackage,
                fit: BoxFit.fitWidth,
                // ignore: todo
                // TODO: Adjust the box size (102)
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                child: Column(
                  // ignore: todo
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

  @override //sobreescribe la clase

  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.all(16.0),
            childAspectRatio: 8.0 / 9.0,
            //Tarjetas de ventas
            children: _buildGridCards(context)));
  }
}
