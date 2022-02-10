import 'package:day_tabbar/model/model.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List<Model> pranto = [];
  _Page1State() {
    pranto.add(Model(
        id: 1,
        name: "toha",
        image:
            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80"));
    pranto.add(Model(
        id: 2,
        name: "shakib",
        image:
            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80"));
    pranto.add(Model(
        id: 3,
        name: "Sir liton",
        image:
            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80"));
    pranto.add(Model(
        id: 4,
        name: "Lord soumya",
        image:
            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: ListView.builder(
          itemCount: pranto.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network("${pranto[index].image}"),
              title: Text("${pranto[index].name}"),
              subtitle: Text("${pranto[index].id}"),
            );
          },
        ),
      ),
    );
  }
}
