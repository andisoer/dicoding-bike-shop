import 'package:bike_shop/checkout_screen.dart';
import 'package:bike_shop/model/bicycle.dart';
import 'package:bike_shop/model/cart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CartScreenPage extends StatefulWidget {
  @override
  _CartScreenPageState createState() => _CartScreenPageState();
}

class _CartScreenPageState extends State<CartScreenPage> {
  final rupiahCurrencyFormatter =
      new NumberFormat.simpleCurrency(locale: 'id_ID');

  bool isFabCheckoutVisible = false;

  @override
  Widget build(BuildContext context) {

    if (cartList.length > 0) {
      isFabCheckoutVisible = true;
    }

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
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          bottomLeft: Radius.circular(8)),
                                      child: Container(
                                        child: Image.network(
                                          bike.imageTitle,
                                        ),
                                        decoration:
                                            BoxDecoration(color: bike.color),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            bike.name,
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          Container(
                                              margin: EdgeInsets.only(top: 16),
                                              child: Text(
                                                  rupiahCurrencyFormatter
                                                      .format(bike.price)))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: IconButton(
                                  onPressed: () {
                                    deleteFromCart(bike.bikeId);
                                  },
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.grey,
                                  )),
                            )
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
      floatingActionButton: Visibility(
        visible: isFabCheckoutVisible,
        child: Container(
          padding: EdgeInsets.only(left: 16),
          margin: EdgeInsets.only(left: 16),
          child: ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CheckoutScreenPage();
              }));
            },
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(1000, 4, 93, 42)
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Checkout', style: TextStyle(fontSize: 18),),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ),
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

      if (cartList.length == 0) {
        isFabCheckoutVisible = false;
      }
    });
  }
}
