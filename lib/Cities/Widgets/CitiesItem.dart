import 'package:flutter/material.dart';
class CostomTextfildAlert extends StatelessWidget {
  String hint;
  bool secure;
  Widget icon;
  TextInputType textInputType;
  final Function onclick;
  String _errorMessage(String error) {
    switch (hint) {
      case "اسم المدينة":
        return " يجب كتابة اسم المدينة";
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
            hintText: "اكتب "+hint+"هنا",
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
  String initialValue;
  Widget icon;
  TextInputType textInputType;
  final Function onclick;
  String _errorMessage(String error) {
    switch (hint) {
      case "اسم المدينة":
        return " يجب كتابة اسم المدينة";
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
          initialValue: initialValue,
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
            hintText: "اكتب "+hint+"هنا",
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