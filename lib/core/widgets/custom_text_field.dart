import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomFromTextField extends StatelessWidget {
  CustomFromTextField.CustomTextField({Key? key ,this.inputType, required this.hint,  this.label, this.onChanged}) : super(key: key);
  String? label;
  String hint;
  TextInputType? inputType;
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: TextFormField(
                onChanged: onChanged ,
                keyboardType: inputType,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      
                      width: 1.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      
                      width: 1.0,
                    ),
                  ),
                  labelText: label,
                  
                  hintText: hint,
                  
                ),
              ),
            );
  }
}