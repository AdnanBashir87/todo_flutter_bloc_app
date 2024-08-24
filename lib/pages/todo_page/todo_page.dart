import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_flutter_bloc_app/pages/todo_page/widgets/todo_widgets.dart';

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
        title: Text(
          "M Y  T O D O s",
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "On Going TODOs:",
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return todoContainer();
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              backgroundColor: Colors.white,
              shadowColor: Colors.white,
              title: const Text("Create your task..."),
              content: SizedBox(
                height: 135.h,
                child: Column(
                  children: [
                    todoTextField(hintText: "TODO Title"),
                    SizedBox(height: 10.h),
                    todoTextField(hintText: "TODO Description"),
                  ],
                ),
              ),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Cancel")),
                ElevatedButton(onPressed: () {}, child: const Text("Add")),
              ],
            ),
          );
        },
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
    padding: EdgeInsets.symmetric(horizontal: 10.w),
    margin: EdgeInsets.symmetric(vertical: 10.h),
    height: 90.h,
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dinner",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      "08:46",
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Text(
                      "Dated: 22/08/24",
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ],
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
