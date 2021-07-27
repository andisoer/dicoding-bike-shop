import 'package:bike_shop/model/bicycle.dart';
import 'package:flutter/material.dart';

class DetailScreenPage extends StatelessWidget {
  final Bicycle bicycle;

  DetailScreenPage({required this.bicycle});

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
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border, color: Colors.black))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(bicycle.brand),
              Text(bicycle.name),
              Image.network(bicycle.imageTitle),
              Row(
                children: [
                  Column(
                    children: [Text('Price'), Text(bicycle.price.toString())],
                  )
                ],
              ),
              Text(bicycle.description),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                      onPressed: () {}, child: Icon(Icons.add_shopping_cart)),
                  ElevatedButton(onPressed: () {}, child: Text('Buy Now'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
