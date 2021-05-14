import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/Provinces/Widgets/ProvincesItem.dart';

class ProvincesScreen extends StatefulWidget {
  @override
  _ProvincesScreenState createState() => _ProvincesScreenState();
}

class _ProvincesScreenState extends State<ProvincesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        title: Text(
          "الاقسام", style: TextStyle(color: Colors.white, fontSize: 25,),),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_outlined, color: Colors.white,),
            onPressed: () {
              Navigator.pop(context);
            }),

      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: provinceslist.length,
          itemBuilder: (context, index) {
            return ProvincesItem(
                context: context ,
                title: provinceslist[index]['title'] ,
                image: provinceslist[index]['image'] );
          },
        ),
      ),
    );
  }
}
