import 'package:flutter/material.dart';

import '../widget/MainDrawer.dart';

class Settings extends StatefulWidget {
  static String routeName = '/Settings';

  Function _setFilters;
  Map<String,bool> currentFilters;
  Settings(this.currentFilters,this._setFilters);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  Map<String,bool> _filters={
    'gluten':false,
    'lactose':false,
    'vegan':false,
    'vegetarian':false,
  };
@override
  initState(){
  _glutenFree= widget.currentFilters['gluten'];
  _lactoseFree= widget.currentFilters['lactose'];
  _vegan= widget.currentFilters['vegan'];
  _vegetarian= widget.currentFilters['vegetarian'];
  super.initState();
}

  Widget _buildSwitchListTile(
      String title, String subtitle, bool currentValue, Function updateValue) {
    return SwitchListTile.adaptive(
      activeColor: Colors.greenAccent,
      title: Text(title),
      subtitle: Text(subtitle),
      value: currentValue,
      onChanged: updateValue,
    );
  }

  void updateValue(value1, newValue) {
    setState(() {
      value1 = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
          actions: [
            IconButton(icon:Icon(Icons.save),onPressed:(){
              _filters={
                'gluten':_glutenFree,
                'lactose':_lactoseFree,
                'vegan':_vegan,
                'vegetarian':_vegetarian,
              };
              widget._setFilters(_filters);
              },)
          ],
        ),
        backgroundColor: Colors.white,
        drawer: MainDrawer(),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Adjust Your meal Selection.',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  _buildSwitchListTile(
                      'Gluten-Free',
                      'Includes only Gluten Free Foods',
                      _glutenFree, (newValue){setState(() {
                    _glutenFree = newValue;
                  });}),
                  _buildSwitchListTile(
                      'Lactose-Free',
                      'Includes only Lactose Free Food',
                      _lactoseFree,
                          (newValue){setState(() {
                        _lactoseFree = newValue;
                      });}
                      ),
                  _buildSwitchListTile(
                      'Vegetarian',
                      'Includes only Vegetarian  Food',
                      _vegetarian,
                          (newValue){setState(() {
                        _vegetarian = newValue;
                      });}
                  ),
                  _buildSwitchListTile(
                      'Vegan',
                      'Includes only Vegan Food',
                      _vegan,
                          (newValue){setState(() {
                        _vegan = newValue;
                      });}
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
