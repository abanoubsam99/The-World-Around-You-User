import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/Provinces/Screens/ProvincesScreen.dart';

class EducationMainScreenGridView extends StatelessWidget {
  List<Map<String, dynamic>> _educationMainScreenGridViewData = [
    {'title': 'سنترات', 'image': 'Assets/home/education.png'},
    {'title': 'مكتبات', 'image': 'Assets/home/bookslibrary.png'},
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
        itemCount: _educationMainScreenGridViewData.length,
        itemBuilder: (ctx, index) {
          return InkWell(
            onTap: () {
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
                    _educationMainScreenGridViewData[index]['image'],
                    scale: 1.5,
                  ),
                  Text(
                    _educationMainScreenGridViewData[index]['title'],
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  )
                ],
              ),
            ),
          );
        });
  }
}
