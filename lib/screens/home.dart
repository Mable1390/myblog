import 'package:flutter/material.dart';
import 'package:myblog/services/api_service_show.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ApiService customFunctions = ApiService();
  dynamic blogs;
  void foo() async {
    print('hi');
    blogs = await customFunctions.showFunction();
    print(blogs);
  }

  @override
  void initState() async {
    blogs = await customFunctions.showFunction();
    print(blogs);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Blog"),
      ),
      body: Column(
        children: [
          FlatButton(
            onPressed: customFunctions.showFunction,
            child: Text("click"),
          ),
        ],
      ),
    );
  }
}
