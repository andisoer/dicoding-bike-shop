import 'package:bike_shop/cart_screen.dart';
import 'package:bike_shop/model/bicycle.dart';
import 'package:bike_shop/model/cart.dart';
import 'package:bike_shop/util/badge_util.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class DetailScreenPage extends StatefulWidget {
  final Bicycle bicycle;

  DetailScreenPage({required this.bicycle});

  @override
  _DetailScreenPageState createState() => _DetailScreenPageState();
}

class _DetailScreenPageState extends State<DetailScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Stack(alignment: Alignment.topRight, children: [
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CartScreenPage();
                  })).then((value) {
                    setState(() {});
                  });
                },
                icon: Icon(Icons.shopping_cart, color: Colors.black)),
            cartList.length > 0
                ? BadgeUtil((cartList.length).toString())
                : Container()
          ])
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(widget.bicycle.brand),
              Text(widget.bicycle.name),
              Image.network(widget.bicycle.imageTitle),
              Row(
                children: [
                  Column(
                    children: [
                      Text('Price'),
                      Text(widget.bicycle.price.toString())
                    ],
                  )
                ],
              ),
              Text(widget.bicycle.description),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 2,
                    child: OutlinedButton(
                        onPressed: () {
                          addToCart(widget.bicycle.bikeId, context);
                        },
                        child: Icon(Icons.add_shopping_cart)),
                  ),
                  Expanded(
                      flex: 6,
                      child: Container(
                        margin: EdgeInsets.only(left: 16),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(elevation: 0),
                            onPressed: () {},
                            child: Text('Buy Now')),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void addToCart(bikeId, context) {
    bool isItemExist = false;

    if (cartList.firstWhereOrNull((cartItem) => cartItem.bikeId == bikeId) !=
        null) {
      isItemExist = true;
    }

    if (isItemExist) {
      final snackBar = SnackBar(content: Text('Item already in cart !'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      setState(() {
        cartList.add(Cart(bikeId: bikeId));
      });
      final snackBar = SnackBar(content: Text('Item added to cart !'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
