import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/SubSubSections/Controller/SubSubSectionController.dart';
import 'package:the_world_around_you_user/SubSubSections/Model/SubSubSectionModel.dart';
import 'package:the_world_around_you_user/SubSubSections/widgets/SubSubSectionsItem.dart';

class SubSubSectionScreen extends StatefulWidget {
  int subsectionID;
  String title;
  int governorateID,cityID;
  SubSubSectionScreen({@required this.governorateID,@required this.cityID,@required this.subsectionID,@required this.title});
  @override
  _SubSubSectionScreenState createState() => _SubSubSectionScreenState();
}

class _SubSubSectionScreenState extends State<SubSubSectionScreen> {
  SubSubSectionsController _subSubSectionsController;
  SubSubSectionModel _subSubSectionModel=SubSubSectionModel();
  bool _loading=true;

  _getSubSections () async{
    _subSubSectionModel=await _subSubSectionsController.GetSubSubSection();
    setState(() {
      _loading=false;
    });
  }

  @override
  void initState() {
    _subSubSectionsController = SubSubSectionsController(sectionID: widget.subsectionID);
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
    itemCount: _subSubSectionModel.data.length,
    itemBuilder: (ctx, index) {
    return SubSubSectionItem(
        title: _subSubSectionModel.data[index].name,
        image: _subSubSectionModel.data[index].image,
      subsectionID: _subSubSectionModel.data[index].iD,
      governorateID:widget.governorateID ,
      cityID: widget.cityID,
    );
    }),

      )
    );
  }
}
