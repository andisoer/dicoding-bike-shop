import 'about_screen.dart';
import 'cart_screen.dart';
import 'detail_screen.dart';
import 'search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/bicycle.dart';

class HomeScreenPage extends StatelessWidget {
  final rupiahCurrencyFormatter =
      new NumberFormat.simpleCurrency(locale: 'id_ID');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Bike Shop',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SearchScreenPage();
                }));
              },
              icon: Icon(Icons.search, color: Colors.black)),
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CartScreenPage();
                }));
              },
              icon: Icon(Icons.shopping_cart, color: Colors.black)),
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AboutScreenPage();
                }));
              },
              icon: Icon(Icons.info, color: Colors.black))
        ],
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
        child: Material(
          color: Colors.transparent,
          child: Column(
            children: [
              Expanded(
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: bikeList.map((bike) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailScreenPage(
                            bicycle: bike,
                          );
                        }));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    child: Image.network(bike.imageTitle),
                                    decoration: BoxDecoration(color: bike.color),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  bike.name,
                                  style: TextStyle(fontSize: 16),
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 4),
                                    child: Text(
                                      rupiahCurrencyFormatter.format(bike.price),
                                      style:
                                          TextStyle(fontWeight: FontWeight.bold),
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
