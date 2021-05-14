import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  String hint;
  bool secure;
  Widget icon;
  TextInputType textInputType;
  final Function onclick;
  String _errorMessage(String error) {
    switch (hint) {
      case "User Name /Id":
        return "User Name /Id is empty";
      case "Password":
        return " Password is empty";
    }
  }

  SearchBar(
      {this.hint, this.icon, this.onclick, this.secure, this.textInputType});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 60,
        child: Material(
          color: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
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
                    hintText: hint,
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: icon,
                    hintStyle: TextStyle(color: Colors.black87, fontSize: 17),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
