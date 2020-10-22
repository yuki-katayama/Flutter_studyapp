import 'package:flutter/material.dart';
import 'package:flutter_kboy/flower_shop/widgets/categories.dart';
import 'package:flutter_kboy/flower_shop/widgets/plant_card.dart';
import 'package:flutter_kboy/flower_shop/widgets/popular_flowers.dart';

class FlowerShopUI extends StatefulWidget {
  static final String id = 'home_screen';

  @override
  _FlowerShopUI createState() => _FlowerShopUI();
}

class _FlowerShopUI extends State<FlowerShopUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'THE FLOWER SHOP',
          style: TextStyle(
            color: Colors.black,
            fontSize: 26.0,
            fontWeight: FontWeight.w800,
            letterSpacing: 2.0,
          ),
        ),
        elevation: 0.0,
        centerTitle: false,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              PopularFlowers(),
              Categories(),
              PlantCard(),
              PlantCard(),
              PlantCard(),
              PlantCard(),
            ],
          ),
        ),
      ),
    );
  }
}