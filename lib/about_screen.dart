import 'package:flutter/material.dart';

class AboutScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'About Apps',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Bike Shop',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Text('Develop by : Andi Surya')),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    child: Text(
                      'This app was created to complete Dicoding \' Belajar Membuat Aplkasi Flutter untuk Pemula\' courses',
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
