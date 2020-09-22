import 'package:coivd_app2/model/product.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProductCard extends StatelessWidget {
  ProductCard({this.imageAspectRatio: 33 / 49, this.product})
      : assert(imageAspectRatio == null || imageAspectRatio > 0);

  final double imageAspectRatio;
  final Product product;

  static final kTextBoxHeight = 65.0;

  @override
  Widget build(BuildContext context) {
    final NumberFormat formatter = NumberFormat.simpleCurrency(
        decimalDigits: 0, locale: Localizations.localeOf(context).toString());
    final ThemeData theme = Theme.of(context);

    final imageWidget = Image.asset(
      product.assetName,
      package: product.assetPackage,
      fit: BoxFit.cover,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        AspectRatio(
          aspectRatio: imageAspectRatio,
          child: imageWidget,
        ),
        SizedBox(
          height: kTextBoxHeight * MediaQuery.of(context).textScaleFactor,
          width: 121.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                product == null ? '' : product.name,
                style: theme.textTheme.headline6,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              SizedBox(height: 4.0),
              Text(
                product == null ? '' : formatter.format(product.price),
                style: theme.textTheme.subtitle2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
