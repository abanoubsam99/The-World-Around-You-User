import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/Provinces/Screens/ProvincesScreen.dart';

class DoctorMainScreenGridView extends StatelessWidget {
  List<Map<String, dynamic>> _doctorMainScreenGridViewData = [
    {'title': 'أطفال', 'image': 'Assets/home/Pediatrics.png'},
    {
      'title': 'أنف و أذن , حنجره',
      'image': 'Assets/home/Otorhinolaryngology.png',
    },
    {
      'title': 'نساء و توليد',
      'image': 'Assets/home/Obstetrics and Gynecology.png',
    },
    {'title': 'عيون', 'image': 'Assets/home/ophthalmology.png'},
    {'title': 'باطني', 'image': 'Assets/home/Internal medicine.png'},
    {'title': 'أسنان', 'image': 'Assets/home/Dentists.png'},
    {'title': 'قلب', 'image': 'Assets/home/Cardiologists.png'},
    {'title': 'مخ و أعصاب', 'image': 'Assets/home/brain.png'},
    {'title': 'المسالك البوليه', 'image': 'Assets/home/Urology.png'},
    {'title': 'باقي التخصصات', 'image': 'Assets/home/Psychiatrists.png'},
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
        itemCount: _doctorMainScreenGridViewData.length,
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
                    _doctorMainScreenGridViewData[index]['image'],
                    scale: 1.5,
                  ),
                  Text(
                    _doctorMainScreenGridViewData[index]['title'],
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  )
                ],
              ),
            ),
          );
        });
  }
}
