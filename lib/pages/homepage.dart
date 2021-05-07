import 'dart:convert';

import 'package:firstflutterproject/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:firstflutterproject/Change name card.dart';
import 'package:firstflutterproject/bg_image.dart';
import 'package:firstflutterproject/drawer.dart';
import 'package:http/http.dart';

class Homepage extends StatefulWidget {


  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  TextEditingController _name =TextEditingController();
  var mytext ="Change me";
  var data;
  var url ="https://jsonplaceholder.typicode.com/photos";

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async{
    var res =await get(Uri.parse(url));
    data= jsonDecode(res.body);
    //print(data);
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("OP App"),
          actions: [
            IconButton(icon: Icon(Icons.logout), onPressed: (){
              Constants.prefs.setBool("loggedIn", false);
              Navigator.popAndPushNamed(context, "/login");
            })
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: data != null ? ListView.builder(
              itemBuilder: (context,index){
               return Padding(
                 padding: const EdgeInsets.all(16),
                 child: ListTile(
                   title: Text(data[index]["title"]),
                   subtitle: Text("ID : ${data[index]["id"]}"),
                   leading: Image.network(data[index]["thumbnailUrl"]),
                 ),
               );
              },
              itemCount: data.length,
          ):Center(
            child: CircularProgressIndicator(),
          )
        ),
        drawer: MyDrawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            mytext=_name.text;
            setState(() {});
          },
          child: Icon(Icons.refresh),
        )
    );
  }
}
