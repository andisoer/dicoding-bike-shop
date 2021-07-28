import 'package:bike_shop/cart_screen.dart';
import 'package:bike_shop/model/bicycle.dart';
import 'package:bike_shop/model/cart.dart';
import 'package:bike_shop/util/badge_util.dart';
import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailScreenPage extends StatefulWidget {
  final Bicycle bicycle;

  DetailScreenPage({required this.bicycle});

  @override
  _DetailScreenPageState createState() => _DetailScreenPageState();
}

class _DetailScreenPageState extends State<DetailScreenPage> {
  final rupiahCurrencyFormatter =
      new NumberFormat.simpleCurrency(locale: 'id_ID');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                    padding: EdgeInsets.symmetric(vertical: 24),
                    color: widget.bicycle.color,
                    child: Image.network(
                      widget.bicycle.imageTitle,
                      width: double.infinity,
                    )),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Stack(alignment: Alignment.topRight, children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return CartScreenPage();
                                })).then((value) {
                                  setState(() {});
                                });
                              },
                              icon: Icon(Icons.shopping_cart,
                                  color: Colors.black)),
                          cartList.length > 0
                              ? BadgeUtil((cartList.length).toString())
                              : Container()
                        ])
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -20.0, 0.0),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.bicycle.name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 4),
                                  child: Text(
                                    widget.bicycle.brand,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300),
                                  )),
                            ],
                          ),
                          Column(
                            children: [
                              Text(rupiahCurrencyFormatter.format(widget.bicycle.price),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16))
                            ],
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Description'),
                              Container(
                                  margin: EdgeInsets.only(top: 8),
                                  child: Text(widget.bicycle.description, textAlign: TextAlign.justify, style: TextStyle(fontWeight: FontWeight.w300),)),
                            ],
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 32),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 2,
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.all(12)
                                ),
                                  onPressed: () {
                                    addToCart(widget.bicycle.bikeId, context);
                                  },
                                  child: Icon(Icons.add_shopping_cart, color: Color.fromARGB(1000, 4, 93, 42),)),
                            ),
                            Expanded(
                                flex: 6,
                                child: Container(
                                  margin: EdgeInsets.only(left: 14),
                                  child: ElevatedButton(
                                      style:
                                          ElevatedButton.styleFrom(elevation: 0, padding: EdgeInsets.all(16), primary: Color.fromARGB(1000, 4, 93, 42)),
                                      onPressed: () {},
                                      child: Text('Buy Now')),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
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
