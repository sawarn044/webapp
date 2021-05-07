import 'package:flutter/material.dart';
import 'package:firstflutterproject/bg_image.dart';


class ColumnView extends StatelessWidget {
  const ColumnView({
    Key key,
    @required this.mytext,
    @required TextEditingController name,
  }) : _name = name, super(key: key);

  final String mytext;
  final TextEditingController _name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BgImage(),
        SizedBox(
          height: 20.0,
        ),
        Text(
          mytext,
          style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: TextField(
            controller: _name,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Something here",
                labelText: "Name"
            ),
          ),
        )
      ],
    );
  }
}