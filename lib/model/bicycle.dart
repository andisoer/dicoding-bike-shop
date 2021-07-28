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
      color: Color.fromARGB(1000, 227, 232, 192)),
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
      color: Color.fromARGB(1000, 223, 223, 207)),
  Bicycle(
      bikeId: 5,
      name: 'Premier 4',
      price: 4200000,
      description:
          'The Premier series was created for riders who want a versatile mountain bike. Built with a lightweight and durable AL6 frame with modern geometry for a more comfortable leisure ride, the Premier will keep riders enthusiastic about riding for years to come. The Premier series fits the rider and sets them up for optimal efficiency and power transfer for day to day ride and sports.',
      imageTitle:
          'https://www.polygonbikes.com/wp-content/uploads/2021/02/MY21-PREMIER-FOUR-P-345x230.png',
      brand: 'Polygon',
      color: Color.fromARGB(1000, 223, 223, 207)),
  Bicycle(
      bikeId: 6,
      name: 'XTRADA 7',
      price: 10200000,
      description:
      'The Xtrada 7 is designed for riders who want to ride on a wide variety of terrain. The ALX super light 6061 hydro formed aluminum frame uses heat treated, hydro formed and butted tubing to give an optimal strength to weight ratio. The tapered head tube provides stable, front-end precision and the new Boost hub spacing on this frame allows for a stiffer wheel with more tyre clearance. The Boost system has also allowed for shorter chain stays, which makes the back of the bike a lot easier to flick around corners.The Xtrada 7 utilises Polygon’s new Wheel Fit Size System whereby each frame size is paired with the wheel size that best fits the rider and sets them up for optimal efficiency and power transfer. Frame S, M, L feature 27.5” wheels and frame M, L, XL come with 29” wheels. The Xtrada 7 is a true cross country mountain bike with a geometry built for speed and stability coupled with tough, trail-ready components. It is perfect for hitting the local single track or an all-day mountain adventure.',
      imageTitle:
      'https://www.polygonbikes.com/wp-content/uploads/2020/08/MY20-XTRADA-7-CRANK-SHIMANO-2-345x230.png',
      brand: 'Polygon',
      color: Color.fromARGB(1000, 222, 188, 48)),
  Bicycle(
      bikeId: 7,
      name: 'XTRADA 6 1×11',
      price: 7500000,
      description:
      'The Xtrada 6 is designed for riders who want to ride on a wide variety of terrain. The ALX super light 6061 hydro formed aluminum frame uses heat treated, hydro formed and butted tubing to give an optimal strength to weight ratio. The tapered head tube provides stable, front-end precision and the new Boost hub spacing on this frame allows for a stiffer wheel with more tyre clearance. The Boost system has also allowed for shorter chain stays, which makes the back of the bike a lot easier to flick around corners.The Xtrada 6 utilises Polygon’s new Wheel Fit Size System whereby each frame size is paired with the wheel size that best fits the rider and sets them up for optimal efficiency and power transfer. Frame S, M, L feature 27.5” wheels and frame M, L, XL come with 29” wheels. The Xtrada 6 is a true cross country mountain bike with a geometry built for speed and stability coupled with tough, trail-ready components. It is perfect for hitting the local single track or an all-day mountain adventure.',
      imageTitle:
      'https://www.polygonbikes.com/wp-content/uploads/2020/08/MY20-XTRADA-6-1x11-TA-345x230.png',
      brand: 'Polygon',
      color: Color.fromARGB(1000, 128, 128, 128)),
  Bicycle(
      bikeId: 8,
      name: 'STRATTOS S3',
      price: 8000000,
      description:
      'Strattos S3 dengan semi carbon fork dan alloy frame yang ringan serta performa maksimal, cocok untuk olahraga rutin dan everyday commuters. Ride all day, experience more.',
      imageTitle:
      'https://www.polygonbikes.com/wp-content/uploads/2020/09/MY20-STRATTOS-S3-P_web-345x230.png',
      brand: 'Polygon',
      color: Color.fromARGB(100, 255, 255, 0)),
  Bicycle(
      bikeId: 9,
      name: 'STRATTOS S7',
      price: 22500000,
      description:
      'The new Strattos Disc brakes series offers an all-rounder road bikes to inspire you to turn every inch of pedal movement into pure speed. With technical parameters surpassing UCI standards and regulations, featuring a geometry favored by riders who have powerful pedaling style and also equipped with disc brakes for powerful and fade-free braking in all conditions. These agile carbon and alloy road bikes are made to fulfill your need for maximum performance either on your local lunch ride or when sprinting for the podium.',
      imageTitle:
      'https://www.polygonbikes.com/wp-content/uploads/2021/07/S7D2-P-345x230.png',
      brand: 'Polygon',
      color: Color.fromARGB(1000, 170, 170, 170)),
  Bicycle(
      bikeId: 10,
      name: 'STRATTOS S5',
      price: 7500000,
      description:
      'Strattos S5 dengan full carbon fork yang ringan dan dapat diandalkan. Disertai alloy frame yang ringan dan performa maksimal, serta perancangan desain yang cocok untuk olahraga rutin dan everyday commuters. Ride all day, experience more.',
      imageTitle:
      'https://www.polygonbikes.com/wp-content/uploads/2020/09/MY20-STRATTOS-S5-P_web-345x230.png',
      brand: 'Polygon',
      color: Color.fromARGB(100, 128, 0, 0)),
];
