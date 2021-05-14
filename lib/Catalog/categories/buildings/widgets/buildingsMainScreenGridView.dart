import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/Provinces/Screens/ProvincesScreen.dart';

class BuildingsMainScreenGridView extends StatelessWidget {
  List<Map<String, dynamic>> _buildingsMainScreenGridViewData = [
    {'title': 'مكاتب', 'image': 'Assets/home/homes office.png'},
    {'title': 'مواد البناء', 'image': 'Assets/home/cement.png'},
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
            crossAxisSpacing: 30,
            mainAxisSpacing: 30),
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        itemCount: _buildingsMainScreenGridViewData.length,
        itemBuilder: (ctx, index) {
          return InkWell(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ProvincesScreen()));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.2, .2), //(x,y)
                      blurRadius: 2.0,
                    ),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    _buildingsMainScreenGridViewData[index]['image'],
                    scale: 1.5,
                  ),
                  Text(
                    _buildingsMainScreenGridViewData[index]['title'],
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  )
                ],
              ),
            ),
          );
        });
  }
}
