import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: const Text("M Y  T O D O s"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return todoContainer();
        },
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
        child: const Text(
          "New Task",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

Widget todoContainer() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    height: 100.h,
    width: 375.w,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.r),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade300,
          spreadRadius: 0,
          blurRadius: 10,
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (value) {},
            ),
            Text(
              "Dinner",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        IconButton(
          color: Colors.red,
          onPressed: () {},
          icon: const Icon(Icons.delete, size: 25),
        )
      ],
    ),
  );
}
