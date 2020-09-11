import 'package:flutter/material.dart';

import '../Screen/Settings.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Text('Let\'s Cook!!!',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Theme.of(context).accentColor,
                    )),
              ),
              ListTile(
                leading: Icon(Icons.restaurant),
                title: Text('Meals'),
                onTap: () {
                  Navigator.of(context).pushNamed('/');
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(Settings.routeName);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
