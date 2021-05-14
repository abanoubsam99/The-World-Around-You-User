import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/SellerDetails/Screens/SellerHomeScreen.dart';

class RestaurantDetailsContainer extends StatefulWidget {
  String image;
  String name;
  String phoneNumber;
  String address;
  RestaurantDetailsContainer(
      {this.address, this.image, this.name, this.phoneNumber});

  @override
  _RestaurantDetailsContainerState createState() =>
      _RestaurantDetailsContainerState();
}

class _RestaurantDetailsContainerState
    extends State<RestaurantDetailsContainer> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
          SellerHomeScreen()));
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 110,
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 0.3),
                    spreadRadius: 1.0)
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 4+10,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage(widget.image), fit: BoxFit.fill)),
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        color: Theme.of(context).primaryColor,
                      ),
                      Text(
                        widget.name,
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone,
                        color: Theme.of(context).primaryColor,
                      ),
                      Text(
                        widget.phoneNumber,
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: Theme.of(context).primaryColor,
                      ),
                      Text(
                        widget.address,
                        style: TextStyle(color: Colors.black, fontSize: 12),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> restaurantDetailsContainerListViewData = [
  {
    'image': 'Assets/Mask Group 36.png',
    'name': 'كنتاكي',
    'phoneNumber': '123',
    'address':
    'ش شكرى القواتلى، المحلة الكبرى(قسم 2)،\nالمحلة الكبرى، الغربية'
  },
  {
    'image': 'Assets/Mask Group 37.png',
    'name': 'Buffalo Burger',
    'phoneNumber': '456',
    'address': 'ش محيي الشرقاوي، المنصوره(قسم 2)،\nالمحلة الكبرى، القليوبيه'
  },
  {
    'image': 'Assets/Mask Group 38.png',
    'name': 'ماكدونالدز',
    'phoneNumber': '789',
    'address': 'ش الشهيد أحمد المنسي، المنصوره،\nالسنبلاوين، المحله الكبري'
  },
  {
    'image': 'Assets/Mask Group 39.png',
    'name': 'خمسه باب',
    'phoneNumber': '1011',
    'address': 'ش أبو أحمد، المنصوره(قسم 2)،\nالمحلة الكبرى، الشرقيه'
  },
  {
    'image': 'Assets/Mask Group 40.png',
    'name': 'Steak Out',
    'phoneNumber': '1213',
    'address': 'ش عبد السلام، المحلة الكبرى(قسم 2)،\nالمنصوره، ميت غمر'
  },
  {
    'image': 'Assets/Mask Group 41.png',
    'name': 'Burger king',
    'phoneNumber': '1415',
    'address': 'ش عبد المنعم، المحلة الكبرى(قسم 2)،\nالمنصوره، السنبلاوين'
  },
  {
    'image': 'Assets/Mask Group 36.png',
    'name': 'كنتاكي',
    'phoneNumber': '123',
    'address':
    'ش شكرى القواتلى، المحلة الكبرى(قسم 2)،\nالمحلة الكبرى، الغربية'
  },
  {
    'image': 'Assets/Mask Group 37.png',
    'name': 'Buffalo Burger',
    'phoneNumber': '456',
    'address': 'ش محيي الشرقاوي، المنصوره(قسم 2)،\nالمحلة الكبرى، القليوبيه'
  },
  {
    'image': 'Assets/Mask Group 38.png',
    'name': 'ماكدونالدز',
    'phoneNumber': '789',
    'address': 'ش الشهيد أحمد المنسي، المنصوره،\nالسنبلاوين، المحله الكبري'
  },
  {
    'image': 'Assets/Mask Group 39.png',
    'name': 'خمسه باب',
    'phoneNumber': '1011',
    'address': 'ش أبو أحمد، المنصوره(قسم 2)،\nالمحلة الكبرى، الشرقيه'
  },
  {
    'image': 'Assets/Mask Group 40.png',
    'name': 'Steak Out',
    'phoneNumber': '1213',
    'address': 'ش عبد السلام، المحلة الكبرى(قسم 2)،\nالمنصوره، ميت غمر'
  },
  {
    'image': 'Assets/Mask Group 41.png',
    'name': 'Burger king',
    'phoneNumber': '1415',
    'address': 'ش عبد المنعم، المحلة الكبرى(قسم 2)،\nالمنصوره، السنبلاوين'
  },
];