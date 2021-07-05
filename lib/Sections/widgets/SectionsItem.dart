import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/Markets/AllMarket/Screens/MarketsScreen.dart';
import 'package:the_world_around_you_user/SubSections/screens/SubSectionsScreen.dart';

class SectionsItem extends StatelessWidget {
  String image, title;
  int sectionID,governorateID,cityID,areaID;
  bool hveSubSection;
  SectionsItem({@required this.title, @required this.image,@required this.sectionID,@required this.hveSubSection,@required this.governorateID,@required this.areaID,@required this.cityID});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if(hveSubSection==true){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      SubSectionsScreen(
                        sectionID: sectionID,
                        title: title,
                        governorateID:governorateID ,
                        cityID: cityID,
                        areaID: areaID,

                      )));
        }else{
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                     MarketsScreen(
                       SectionID: sectionID,SectionName: title,
                       governorateID: governorateID,
                       cityID: cityID,
                       areaID: areaID,
                     )));
        }

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
            Image.network(
              image,
              scale: 1.5,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.black, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
