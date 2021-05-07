import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Sawarn OP"),
            accountEmail: Text("shanks0061@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/tere nam.jpg') ,
            ),
          ),
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text("Account"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.airline_seat_recline_extra_sharp),
          )
        ],
      ),
    );
  }
}
