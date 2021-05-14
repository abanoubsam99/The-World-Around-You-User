import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/Catalog/categories/womenWorld/widgets/womenWorldMainScreenGridView.dart';

class WomenWorldMainScreen extends StatefulWidget {
  @override
  _WomenWorldMainScreenState createState() => _WomenWorldMainScreenState();
}

class _WomenWorldMainScreenState extends State<WomenWorldMainScreen> {
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
          'عالم المرأه',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: WomenWorldMainScreenGridView(),
      ),
    );
  }
}
