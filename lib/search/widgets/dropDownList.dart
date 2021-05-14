import 'package:flutter/material.dart';

CustomDropdownSearch(){
  String dropdownvalue="المنصورة" ;
  var items =  ['المنصورة','السنبلاوين','ميت غمر','طلخا','دكرنس'];
  return  Padding(
    padding: const EdgeInsets.only(right: 10),
    child: StatefulBuilder(
        builder: (context, setState) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                color: Colors.white ),
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: dropdownvalue,
                    style: TextStyle(fontSize:15,color: Colors.black ),
                    hint: Text("المدن",style: TextStyle(fontSize:13 )),
                    icon: Icon(Icons.keyboard_arrow_down,color: Theme.of(context).primaryColor,),
                    items:items.map((String items) {
                      return DropdownMenuItem(
                          value: items,
                          child: Text(items)
                      );
                    }
                    ).toList(),
                    onChanged: (String newValue){
                      setState(() {
                        dropdownvalue = newValue;
                      });
                    },
                  ),
                ),
              ),
            ),
          );}
    ),
  );
}