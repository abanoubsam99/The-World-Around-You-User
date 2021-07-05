import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/SubSections/Controller/SubSectionsController.dart';
import 'package:the_world_around_you_user/SubSections/Model/SubSectionsModel.dart';
import 'package:the_world_around_you_user/SubSections/widgets/SubSectionsItem.dart';


class SubSectionsScreen extends StatefulWidget {
  int sectionID;
  String title;
  int governorateID,cityID,areaID;

  SubSectionsScreen({@required this.governorateID,@required this.cityID,@required this.areaID,@required this.sectionID,@required this.title});
  @override
  _SubSectionsScreenState createState() => _SubSectionsScreenState();
}

class _SubSectionsScreenState extends State<SubSectionsScreen> {
  SubSectionsController _subSectionsController;
  SubSectionsModel _subSectionsModel=SubSectionsModel();
  bool _loading=true;
  _getSubSections () async{
    _subSectionsModel=await _subSectionsController.GetController();
    setState(() {
      _loading=false;
    });
  }

  @override
  void initState() {
    _subSectionsController = SubSectionsController(sectionID: widget.sectionID);
    _getSubSections();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme
          .of(context)
          .accentColor,
      appBar: AppBar(
        title: Text(
         widget.title, style: TextStyle(color: Colors.white, fontSize: 25,),),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_outlined, color: Colors.white,),
            onPressed: () {
              Navigator.pop(context);
            }),

      ),
      body: _loading ? Center(child: CircularProgressIndicator(backgroundColor: Theme.of(context).primaryColor,),)
      :Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    childAspectRatio: 1,
    crossAxisSpacing: 30,
    mainAxisSpacing: 30),
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
    itemCount: _subSectionsModel.data.length,
    itemBuilder: (ctx, index) {
    return SubSectionsItem(
        title: _subSectionsModel.data[index].name,
        image: _subSectionsModel.data[index].image,
      subsectionID:_subSectionsModel.data[index].iD ,
      hveSubSubSection:_subSectionsModel.data[index].haveSubSection ,
      governorateID:widget.governorateID ,
      cityID: widget.cityID,
      areaID: widget.areaID,
    );
    }),

      )
    );
  }
}
