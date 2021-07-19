import 'package:flutter/material.dart';
import 'package:the_world_around_you_user/Sections/screens/SectionScreen.dart';
import 'package:the_world_around_you_user/Streets/Controller/AreaController.dart';
import 'package:the_world_around_you_user/Streets/Model/AreaModel.dart';

class StreetsScreen extends StatefulWidget {
  String CitName;
  int CityID,governorateID;

  StreetsScreen({@required this.CityID,@required this.CitName,@required this.governorateID});
  @override
  _StreetsScreenState createState() => _StreetsScreenState();
}

class _StreetsScreenState extends State<StreetsScreen> {
  AreaController _areaController= AreaController();
  AreaModel _areaModel=AreaModel();
  String _area;
  List<Color> colors = [Colors.red, Colors.green, Colors.yellow,Colors.blueAccent,Colors.orange,Colors.brown, Colors.black87, Colors.cyanAccent,Colors.deepPurple,Colors.yellowAccent,Colors.red[100], Colors.green[100], Colors.yellow[100],Colors.blueAccent[100],Colors.orange[100],Colors.brown[100], Colors.black87, Colors.cyanAccent[100],Colors.deepPurple[100],Colors.yellowAccent[100],Colors.red[200], Colors.green[200], Colors.yellow[200],Colors.blueAccent[200],Colors.orange[200],Colors.brown[200], Colors.black87, Colors.cyanAccent[200],Colors.deepPurple[200],Colors.yellowAccent[200],Colors.red[300], Colors.green[300], Colors.yellow[300],Colors.blueAccent[300],Colors.orange[300],Colors.brown[300], Colors.black87, Colors.cyanAccent[300],Colors.deepPurple[300],Colors.yellowAccent[300],Colors.red[400], Colors.green[400], Colors.yellow[400],Colors.blueAccent[400],Colors.orange[400],Colors.brown[400], Colors.black87, Colors.cyanAccent[400],Colors.deepPurple[400],Colors.yellowAccent[400],Colors.red[500], Colors.green[500], Colors.yellow[500],Colors.blueAccent[500],Colors.orange[500],Colors.brown[500], Colors.black87, Colors.cyanAccent[500],Colors.deepPurple[500],Colors.yellowAccent[500],Colors.red[600], Colors.green[600], Colors.yellow[600],Colors.blueAccent[600],Colors.orange[600],Colors.brown[600], Colors.black87, Colors.cyanAccent[600],Colors.deepPurple[600],Colors.yellowAccent[600],Colors.red, Colors.green, Colors.yellow,Colors.blueAccent,Colors.orange,Colors.brown, Colors.black87, Colors.cyanAccent,Colors.deepPurple,Colors.yellowAccent,Colors.red, Colors.green, Colors.yellow,Colors.blueAccent,Colors.orange,Colors.brown, Colors.black87, Colors.cyanAccent,Colors.deepPurple,Colors.yellowAccent,Colors.red, Colors.green, Colors.yellow,Colors.blueAccent,Colors.orange,Colors.brown, Colors.black87, Colors.cyanAccent,Colors.deepPurple,Colors.yellowAccent,Colors.red, Colors.green, Colors.yellow,Colors.blueAccent,Colors.orange,Colors.brown, Colors.black87, Colors.cyanAccent,Colors.deepPurple,Colors.yellowAccent];

  Stream<AreaModel>_getArea () async*{
    _areaModel=await _areaController.GetArea(id: widget.CityID);
    yield _areaModel;
  }
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    _getArea();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        title: Text(widget.CitName,style: TextStyle(color: Colors.white,fontSize: 25,),),
        centerTitle: true,
        leading:  IconButton(icon: Icon(Icons.arrow_back_outlined,color: Colors.white,), onPressed: (){
          Navigator.pop(context);
        }),
       ),

      body:  StreamBuilder <AreaModel>(
    stream:  _getArea(),
    builder: (BuildContext context, AsyncSnapshot<AreaModel> snapshot) {
      if(snapshot.data==null){
        return Center(child: CircularProgressIndicator(backgroundColor: Theme.of(context).primaryColor,),);
      }else
        return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: snapshot.data.data.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SectionsScreen(
                  areaID: snapshot.data.data[index].iD,
                  governorateID:widget.governorateID ,
                  cityID: widget.CityID,

                )));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.2, .2), //(x,y)
                          blurRadius: 2.0,
                        ),
                      ]
                  ),
                  child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(snapshot.data.data[index].name,style: TextStyle(color: Colors.black,fontSize: 23),),
                      SizedBox(width: 10,),

                      Container(
                          width: 15,
                          height: MediaQuery.of(context).size.height,
                          color: ((){
                            if(index<100){
                              return  colors[index];
                            }
                            else{
                              index=index-100;
                              return  colors[index];
                            }
                          }())
                      )
                    ],),
                ),
              ),
            );
          },

        ),
      );
    }
      ),

    );
  }

}