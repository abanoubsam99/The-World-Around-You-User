import 'package:flutter/material.dart';

List<Color> colors = [Colors.red, Colors.green, Colors.yellow,Colors.blueAccent,Colors.orange,Colors.brown, Colors.black87, Colors.cyanAccent,Colors.deepPurple,Colors.yellowAccent,Colors.red[100], Colors.green[100], Colors.yellow[100],Colors.blueAccent[100],Colors.orange[100],Colors.brown[100], Colors.black87, Colors.cyanAccent[100],Colors.deepPurple[100],Colors.yellowAccent[100],Colors.red[200], Colors.green[200], Colors.yellow[200],Colors.blueAccent[200],Colors.orange[200],Colors.brown[200], Colors.black87, Colors.cyanAccent[200],Colors.deepPurple[200],Colors.yellowAccent[200],Colors.red[300], Colors.green[300], Colors.yellow[300],Colors.blueAccent[300],Colors.orange[300],Colors.brown[300], Colors.black87, Colors.cyanAccent[300],Colors.deepPurple[300],Colors.yellowAccent[300],Colors.red[400], Colors.green[400], Colors.yellow[400],Colors.blueAccent[400],Colors.orange[400],Colors.brown[400], Colors.black87, Colors.cyanAccent[400],Colors.deepPurple[400],Colors.yellowAccent[400],Colors.red[500], Colors.green[500], Colors.yellow[500],Colors.blueAccent[500],Colors.orange[500],Colors.brown[500], Colors.black87, Colors.cyanAccent[500],Colors.deepPurple[500],Colors.yellowAccent[500],Colors.red[600], Colors.green[600], Colors.yellow[600],Colors.blueAccent[600],Colors.orange[600],Colors.brown[600], Colors.black87, Colors.cyanAccent[600],Colors.deepPurple[600],Colors.yellowAccent[600],Colors.red, Colors.green, Colors.yellow,Colors.blueAccent,Colors.orange,Colors.brown, Colors.black87, Colors.cyanAccent,Colors.deepPurple,Colors.yellowAccent,Colors.red, Colors.green, Colors.yellow,Colors.blueAccent,Colors.orange,Colors.brown, Colors.black87, Colors.cyanAccent,Colors.deepPurple,Colors.yellowAccent,Colors.red, Colors.green, Colors.yellow,Colors.blueAccent,Colors.orange,Colors.brown, Colors.black87, Colors.cyanAccent,Colors.deepPurple,Colors.yellowAccent,Colors.red, Colors.green, Colors.yellow,Colors.blueAccent,Colors.orange,Colors.brown, Colors.black87, Colors.cyanAccent,Colors.deepPurple,Colors.yellowAccent];

class CostomTextfildAlert extends StatelessWidget {
  String hint;
  bool secure;
  Widget icon;
  TextInputType textInputType;
  final Function onclick;
  String _errorMessage(String error) {
    switch (hint) {
      case "اسم الشارع":
        return " يجب كتابة اسم الشارع";
    }
  }

  CostomTextfildAlert({
    @required this.hint,
    @required this.secure,
    @required this.onclick,
    @required this.textInputType,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Directionality(
        textDirection: TextDirection.rtl,

        child: TextFormField(
          validator: (value) {
            if (value.isEmpty) {
              return _errorMessage(hint);
            }
          },
          onSaved: onclick,
          obscureText: secure,
          keyboardType: textInputType,
          decoration: InputDecoration(
            errorStyle: TextStyle(color: Theme.of(context).primaryColor) ,
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color:Theme.of(context).primaryColor,
              ),
            ),
            focusedErrorBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color:Theme.of(context).primaryColor,
              ),
            ) ,
            labelText: hint,
            hintText: "اكتب "+hint+" هنا ",
            hintStyle:  TextStyle(color: Theme.of(context).primaryColor,fontSize: 17),
            labelStyle: TextStyle(color: Theme.of(context).primaryColor,fontSize: 17),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color:Theme.of(context).primaryColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color:Theme.of(context).primaryColor,
              ),
            ),
          ),
          style: TextStyle(color: Theme.of(context).primaryColor),

        ),
      ),
    );
  }
}

class EditeCostomTextfildAlert extends StatelessWidget {
  String hint;
  bool secure;
  Widget icon;
  String initialValue;
  TextInputType textInputType;
  final Function onclick;
  String _errorMessage(String error) {
    switch (hint) {
      case "اسم الشارع":
        return " يجب كتابة اسم الشارع";
    }
  }

  EditeCostomTextfildAlert({
    @required this.hint,
    @required this.secure,
    @required this.onclick,
    @required this.textInputType,
    @required this.initialValue,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Directionality(
        textDirection: TextDirection.rtl,

        child: TextFormField(
          validator: (value) {
            if (value.isEmpty) {
              return _errorMessage(hint);
            }
          },
          onSaved: onclick,
          obscureText: secure,
          initialValue: initialValue,
          keyboardType: textInputType,
          decoration: InputDecoration(
            errorStyle: TextStyle(color: Theme.of(context).primaryColor) ,
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color:Theme.of(context).primaryColor,
              ),
            ),
            focusedErrorBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color:Theme.of(context).primaryColor,
              ),
            ) ,
            labelText: hint,
            hintText: "اكتب "+hint+" هنا ",
            hintStyle:  TextStyle(color: Theme.of(context).primaryColor,fontSize: 17),
            labelStyle: TextStyle(color: Theme.of(context).primaryColor,fontSize: 17),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color:Theme.of(context).primaryColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color:Theme.of(context).primaryColor,
              ),
            ),
          ),
          style: TextStyle(color: Theme.of(context).primaryColor),

        ),
      ),
    );
  }
}