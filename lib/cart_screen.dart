import 'package:bike_shop/model/bicycle.dart';
import 'package:bike_shop/model/cart.dart';
import 'package:flutter/material.dart';

class CartScreenPage extends StatefulWidget {
  @override
  _CartScreenPageState createState() => _CartScreenPageState();
}

class _CartScreenPageState extends State<CartScreenPage> {
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
        centerTitle: true,
        title: Text(
          'Cart',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
      body: Container(
        child: cartList.length > 0
            ? Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      var bike = findBike(cartList[index]);
                      return Card(
                        child: Row(
                          children: [
                            Image.network(
                              bike.imageTitle,
                              height: 80,
                              width: 80,
                            ),
                            Column(
                              children: [
                                Text(bike.name),
                                Text(bike.price.toString())
                              ],
                            ),
                            IconButton(
                                onPressed: () {
                                  deleteFromCart(bike.bikeId);
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ))
                          ],
                        ),
                      );
                    },
                    itemCount: cartList.length),
              )
            : Center(
                child: Text('Empty cart, please explore again :D'),
              ),
      ),
    );
  }

  Bicycle findBike(Cart cartItem) {
    return bikeList.firstWhere((bike) => bike.bikeId == cartItem.bikeId);
  }

  void deleteFromCart(int bikeId) {
    setState(() {
      cartList.removeWhere((cartItem) => cartItem.bikeId == bikeId);
    });
  }
}
