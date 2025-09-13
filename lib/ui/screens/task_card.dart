import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      tileColor: Colors.white,
      title: Text("This is title", style: TextStyle(color: Colors.black)),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          Text("Decription of the task"),
          Text(
            "Date: 12-09-2025",
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
          ),
          Row(
            children: [
              Chip(
                label: Text("New"),
                backgroundColor: Colors.blue,
                labelStyle: TextStyle(color: Colors.white),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16),
              ),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
              IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
            ],
          ),
        ],
      ),
    );
  }
}
