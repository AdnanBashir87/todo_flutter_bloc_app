import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_flutter_bloc_app/main.dart';
import 'package:todo_flutter_bloc_app/pages/todo_page/todo_page.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 100.h),
          SizedBox(
            height: 300.h,
            width: 375.w,
            child: Image.asset("assets/onboarding.jpg"),
          ),
          SizedBox(height: 30.h),
          Text(
            "Plan YOUR Daily Routine\nlet's manage your daily routine time",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black12,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 100.h),
          GestureDetector(
            onTap: () {
              //  TODO write Function1
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TodoPage(),
                  ));
            },
            child: Container(
              height: 56.h,
              width: 300.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color(0xffE11A38),
                  borderRadius: BorderRadius.circular(50.r),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.red,
                      blurRadius: 10,
                      spreadRadius: 0,
                    )
                  ]),
              child: Text(
                "Schedule now",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
