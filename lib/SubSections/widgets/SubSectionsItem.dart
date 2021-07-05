import 'package:flutter/material.dart';

import 'package:the_world_around_you_user/Markets/AllMarket/Screens/MarketsScreen.dart';
import 'package:the_world_around_you_user/SubSubSections/screens/SubSubSectionScreen.dart';


class SubSectionsItem extends StatelessWidget {
  String image, title;
  int subsectionID,governorateID,cityID,areaID;
  bool hveSubSubSection;


  SubSectionsItem({@required this.title, @required this.image,@required this.subsectionID,@required this.hveSubSubSection,@required this.governorateID,@required this.areaID,@required this.cityID});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if(hveSubSubSection==true){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      SubSubSectionScreen(
                        subsectionID: subsectionID,
                        title: title,
                        governorateID: governorateID,
                        cityID: cityID,
                        areaID:areaID,

                      )));
        }else{
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      MarketsScreen(
                        SectionName: title,
                        SectionID: subsectionID,
                        governorateID: governorateID,
                        cityID: cityID,
                        areaID:areaID,
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
              width: 65,
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
