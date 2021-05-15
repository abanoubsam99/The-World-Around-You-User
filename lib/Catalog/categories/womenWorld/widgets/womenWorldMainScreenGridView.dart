import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/Provinces/Screens/ProvincesScreen.dart';

class WomenWorldMainScreenGridView extends StatelessWidget {
  List<Map<String, dynamic>> _womenWorldMainScreenGridViewData = [
    {'title': 'كوافير', 'image': 'Assets/home/hairdresser.png'},
    {'title': 'اتيليه', 'image': 'Assets/home/atelier.png'},
    {'title': 'إكسسوارات', 'image': 'Assets/home/accessories.png'},
    {'title': 'مجوهرات', 'image': 'Assets/home/Jewelery.png'},
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
        itemCount: _womenWorldMainScreenGridViewData.length,
        itemBuilder: (ctx, index) {
          return InkWell(onTap: (){
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
                    _womenWorldMainScreenGridViewData[index]['image'],
                    scale: 1.5,
                  ),
                  Text(
                    _womenWorldMainScreenGridViewData[index]['title'],
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  )
                ],
              ),
            ),
          );
        });
  }
}
