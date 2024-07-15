import 'package:flutter/material.dart';

class RoundedTextFormField extends StatelessWidget{
  final String? hintText;
  final IconData? icon;
  final Color? color;
  final Color? backgroundColor;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;


  const RoundedTextFormField({Key? key,this.hintText,this.icon, this.onChanged,this.color,this.backgroundColor,this.controller, required String? Function(dynamic value) validator}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(30)
      ),
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        cursorColor: color,
        decoration: InputDecoration(
          icon: Icon(
            icon,color: color,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: color
          ),
          border: InputBorder.none
        ),
      ),
    );
  }


}