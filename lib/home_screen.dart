import 'package:bike_shop/detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'model/bicycle.dart';

class HomeScreenPage extends StatelessWidget {
  final rupiahCurrencyFormatter =
      new NumberFormat.simpleCurrency(locale: 'id_ID');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bike Shop',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_cart, color: Colors.black87))
                ],
              ),
              Expanded(
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: bikeList.map((bike) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return DetailScreenPage(bicycle: bike,);
                        }));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Expanded(
                                child: ClipRRect(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(10)),
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                child: Image.network(bike.imageTitle),
                                decoration: BoxDecoration(color: bike.color),
                              ),
                            )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    bike.name,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(top: 4),
                                      child: Text(rupiahCurrencyFormatter
                                          .format(bike.price)))
                                ],
                              ),
                            ),
                          ],
                        ),
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
