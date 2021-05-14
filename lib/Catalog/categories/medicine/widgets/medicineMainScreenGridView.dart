import 'package:flutter/material.dart';

import 'package:the_world_around_you_user/Catalog/categories/medicine/screens/doctor/screen/doctorMainScreen.dart';
import 'package:the_world_around_you_user/Provinces/Screens/ProvincesScreen.dart';

class MedicineMainScreenGridView extends StatelessWidget {
  List<Map<String, dynamic>> _medicineMainScreenGridViewData = [
    {'title': 'مستشفيات', 'image': 'Assets/home/hospital.png', 'path': ProvincesScreen()},
    {
      'title': 'دكتور',
      'image': 'Assets/home/doctor.png',
      'path': DoctorMainScreen()
    },
    {'title': 'صيدليات', 'image': 'Assets/home/pharmacy.png', 'path': ProvincesScreen()},
    {
      'title': 'معامل أشعه و تحاليل',
      'image': 'Assets/home/laboratory.png',
      'path': ProvincesScreen()
    },
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
        itemCount: _medicineMainScreenGridViewData.length,
        itemBuilder: (ctx, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          _medicineMainScreenGridViewData[index]['path']));
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
                    _medicineMainScreenGridViewData[index]['image'],
                    scale: 1.5,
                  ),
                  Text(
                    _medicineMainScreenGridViewData[index]['title'],
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  )
                ],
              ),
            ),
          );
        });
  }
}
