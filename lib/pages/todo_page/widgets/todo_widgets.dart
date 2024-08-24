import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget todoTextField({required String hintText, Function(String)? onChanged}) {
  return Container(
    margin: EdgeInsets.only(top: 5.w),
    width: 325.w,
    height: 50.h,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15.w),
      border: Border.all(
        color: const Color.fromARGB(255, 204, 204, 204),
      ),
    ),
    child: TextFormField(
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        hintStyle: const TextStyle(
          color: Colors.black45,
        ),
      ),
      style: TextStyle(
        color: Colors.black,
        fontSize: 12.sp,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}
