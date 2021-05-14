import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/Catalog/home/widgets/homeScreenGridView.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: Image.asset("Assets/icon.png"),
        ),
        centerTitle: true,
        title: Text(
          'العالم من حولك',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: CatalogScreenGridView(),
      ),
    );
  }
}
