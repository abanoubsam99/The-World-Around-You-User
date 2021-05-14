import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/Catalog/categories/clothesShop/widgets/clothesShopMainScreenGridView.dart';

class ClothesShopMainScreen extends StatefulWidget {
  @override
  _ClothesShopMainScreenState createState() => _ClothesShopMainScreenState();
}

class _ClothesShopMainScreenState extends State<ClothesShopMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          'محل ملابس',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ClothesShopMainScreenGridView(),
      ),
    );
  }
}
