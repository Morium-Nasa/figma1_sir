// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:task_app/widget/brand_colors.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController? controller;
  final dynamic? icon;
  final dynamic? data;
  final String? hintText, lebelText, keyy, initialText, val;
  final Color? bgColor;
  final Function? function;
  final dynamic? formatter, validator, keyType;
  final int? maxLine;

  MyTextField(
      {this.bgColor,
      this.keyType,
      this.controller,
      this.formatter,
      this.function,
      this.hintText,
      this.val,
      this.icon,
      this.validator,
      this.data,
      this.keyy,
      this.lebelText,
      this.maxLine,
      this.initialText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyType,
      maxLines: maxLine ?? 1,
      initialValue: initialText,
      inputFormatters: formatter,
      validator: validator,
      onSaved: (String? value) => data[keyy] = value,
      decoration: InputDecoration(
        labelText: lebelText,
        hintText: hintText,
        prefixIcon: icon,
        border: InputBorder.none,
        fillColor: Colors.transparent,
        hintStyle: myStyle(16, Colors.grey),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: shadaColor)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: shadaColor)),
      ),
    );
  }
}
