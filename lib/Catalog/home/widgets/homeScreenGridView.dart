import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/Catalog/categories/buildings/screens/buildingsMainScreen.dart';
import 'package:the_world_around_you_user/Catalog/categories/clothesShop/screens/clothesShopMainScreen.dart';
import 'package:the_world_around_you_user/Catalog/categories/medicine/screens/medicineMainScreen.dart';
import 'package:the_world_around_you_user/Catalog/categories/womenWorld/screens/womenWorldMainScreen.dart';
import 'package:the_world_around_you_user/Provinces/Screens/ProvincesScreen.dart';

class CatalogScreenGridView extends StatelessWidget {
  List<Map<String, dynamic>> _homeScreenGridViewData = [
    {
      'title': 'الطب',
      'image': 'Assets/home/medicine.png',
      'path': MedicineMainScreen()
    },
    {
      'title': 'مطاعم',
      'image': 'Assets/home/resturant.png',
      'path': ProvincesScreen()
    },
    {
      'title': 'كافيهات',
      'image': 'Assets/home/Cafes.png',
      'path': ProvincesScreen()
    },
    {
      'title': 'محل ملابس',
      'image': 'Assets/home/clothes shop.png',
      'path': ClothesShopMainScreen()
    },
    {
      'title': 'أسواق',
      'image': 'Assets/home/markets.png',
      'path': ProvincesScreen()
    },

    {
      'title': 'مكتبات',
      'image': 'Assets/home/bookslibrary.png',
      'path': ProvincesScreen()
    },

    {'title': 'عالم السيارات', 'image': 'Assets/home/cars.png', 'path': ProvincesScreen()},
    {'title': 'رياضه', 'image': 'Assets/home/sport.png', 'path': ProvincesScreen()},
    {
      'title': 'عالم المرأه',
      'image': 'Assets/home/woman.png',
      'path': WomenWorldMainScreen()
    },
    {
      'title': 'ما يلزمه البيت الحديث',
      'image': 'Assets/home/whisk.png',
      'path':ProvincesScreen()
    },
    {
      'title': 'أعمال قد تحتاج إليها',
      'image': 'Assets/home/electrician.png',
      'path': ProvincesScreen()
    },
    {'title': 'مكاتب محاماه', 'image': 'Assets/home/lawyer.png', 'path': null},
    {
      'title': 'عقارات',
      'image': 'Assets/home/real estates.png',
      'path': BuildingsMainScreen()
    },
    {'title': 'سوق المال', 'image': 'Assets/home/bank.png', 'path': ProvincesScreen()},
    {'title': 'أدوات و عدد', 'image': 'Assets/home/tools.png', 'path': ProvincesScreen()},
    {'title': 'مكاتب سياحه', 'image': 'Assets/home/tourism.png', 'path': ProvincesScreen()},
    {'title': 'فنادق', 'image': 'Assets/home/hotel.png', 'path': ProvincesScreen()},
    {
      'title': 'قاعات أفراح',
      'image': 'Assets/home/groom and bride.png',
      'path': ProvincesScreen()
    },
    {'title': 'زراعه', 'image': 'Assets/home/agriculture.png', 'path': ProvincesScreen()},
    {'title': 'شركات', 'image': 'Assets/home/company.png', 'path': ProvincesScreen()},
    {'title': 'مواد غذائيه', 'image': 'Assets/home/rice.png', 'path': ProvincesScreen()},
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
        itemCount: _homeScreenGridViewData.length,
        itemBuilder: (ctx, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          _homeScreenGridViewData[index]['path']));
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
                  ]

              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    _homeScreenGridViewData[index]['image'],
                    scale: 1.5,
                  ),
                  Text(
                    _homeScreenGridViewData[index]['title'],
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  )
                ],
              ),
            ),
          );
        });
  }
}
