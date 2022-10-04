import 'package:flutter/material.dart';

class TxtField extends StatelessWidget {
  final hint;
  const TxtField({
    Key? key,
    this.hint
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        fillColor: Colors.white,
        filled: true,
        contentPadding: EdgeInsets.only(left: 10,top: 5,bottom: 5),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.transparent)
        ),
        border: InputBorder.none,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.transparent)
        ),
      ),
    );
  }
}