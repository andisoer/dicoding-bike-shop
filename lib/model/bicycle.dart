import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bicycle {
  int bikeId;
  String name;
  int price;
  String description;
  String imageTitle;
  String brand;
  Color color;

  Bicycle(
      {required this.bikeId,
      required this.name,
      required this.price,
      required this.description,
      required this.imageTitle,
      required this.brand,
      required this.color});
}

var bikeList = [
  Bicycle(
      bikeId: 1,
      name: 'Cascade 4',
      price: 3550000,
      description:
          'The Cascade 4 was created to be versatile bikes for riders who are looking for a bike to commute to work during the weekdays, and planning to go for recreational riding on the weekends. The Cascade is built with a lightweight and durable AL6 frame with modern geometry for a more comfortable ride. The component spec includes: 27.5” wheels for less rolling resistance, a 100mm travel suspension fork to smooth out the bumps while riding down fire roads, and disc brakes to keep riders in control. The new Cascade 4 is a reliable companion for day-to-day use and sport.',
      imageTitle:
          'https://www.polygonbikes.com/wp-content/uploads/2021/07/MY22-CASCADE-FOUR-P-345x230.png',
      brand: 'Polygon',
      color: Color.fromARGB(100, 56, 101, 100)),
  Bicycle(
      bikeId: 2,
      name: 'Cascade 3',
      price: 3150000,
      description:
          'The Cascade 3 was created to be versatile bikes for riders who are looking for a bike to commute to work during the weekdays, and planning to go for recreational riding on the weekends. The Cascade is built with a lightweight and durable AL6 frame with modern geometry for a more comfortable ride. The component spec includes: 27.5” wheels for less rolling resistance, a 100mm travel suspension fork to smooth out the bumps while riding down fire roads, and disc brakes to keep riders in control. The new Cascade 3 is a reliable companion for day-to-day use and sport.',
      imageTitle:
          'https://www.polygonbikes.com/wp-content/uploads/2021/07/MY22-Cascade-3-345x230.png',
      brand: 'Polygon',
      color: Color.fromARGB(100, 227, 232, 192)),
  Bicycle(
      bikeId: 3,
      name: 'Cascade 2',
      price: 2800000,
      description:
          'The Cascade 2 was created to be versatile bikes for riders who are looking for a bike to commute to work during the weekdays, and planning to go for recreational riding on the weekends. The Cascade is built with a lightweight and durable AL6 frame with modern geometry for a more comfortable ride. The component spec includes: 27.5” wheels for less rolling resistance, a 100mm travel suspension fork to smooth out the bumps while riding down fire roads, and disc brakes to keep riders in control. The new Cascade 2 is a reliable companion for day-to-day use and sport.',
      imageTitle:
          'https://www.polygonbikes.com/wp-content/uploads/2021/02/MY20-CASCADE-TWO-G2-P-345x230.png',
      brand: 'Polygon',
      color: Color.fromARGB(100, 13, 70, 149)),
  Bicycle(
      bikeId: 4,
      name: 'Premier 5',
      price: 4850000,
      description:
          'The Premier series was created for riders who want a versatile mountain bike. Built with a lightweight and durable AL6 frame with modern geometry for a more comfortable leisure ride, the Premier will keep riders enthusiastic about riding for years to come. The Premier series fits the rider and sets them up for optimal efficiency and power transfer for day to day ride and sports.',
      imageTitle:
          'https://www.polygonbikes.com/wp-content/uploads/2020/06/PREMIER-4-TA-345x230.png',
      brand: 'Polygon',
      color: Color.fromARGB(100, 223, 223, 207)),
  Bicycle(
      bikeId: 5,
      name: 'Premier 4',
      price: 4200000,
      description:
          'The Premier series was created for riders who want a versatile mountain bike. Built with a lightweight and durable AL6 frame with modern geometry for a more comfortable leisure ride, the Premier will keep riders enthusiastic about riding for years to come. The Premier series fits the rider and sets them up for optimal efficiency and power transfer for day to day ride and sports.',
      imageTitle:
          'https://www.polygonbikes.com/wp-content/uploads/2021/02/MY21-PREMIER-FOUR-P-345x230.png',
      brand: 'Polygon',
      color: Color.fromARGB(100, 223, 223, 207)),
];
