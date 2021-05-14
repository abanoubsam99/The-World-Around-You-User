import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/Catalog/categories/buildings/widgets/buildingsMainScreenGridView.dart';

class BuildingsMainScreen extends StatefulWidget {
  @override
  _BuildingsMainScreenState createState() => _BuildingsMainScreenState();
}

class _BuildingsMainScreenState extends State<BuildingsMainScreen> {
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
          'عقارات',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: BuildingsMainScreenGridView(),
      ),
    );
  }
}
