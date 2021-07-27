import 'package:flutter/material.dart';

import 'model/bicycle.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                children: bikeList.map((bike) {
                  return InkWell(
                    onTap: () {},
                    child: Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                              child: Image.network(bike.imageTitle)),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              bike.name,
                              style: TextStyle(fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
