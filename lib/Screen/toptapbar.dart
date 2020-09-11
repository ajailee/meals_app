// import 'package:flutter/material.dart';
// import 'package:meals_app/Screen/CategoryScreen.dart';
// import 'FavoritesScreen.dart';
//
// class TopTapBar extends StatefulWidget {
//   @override
//   _TopTapBarState createState() => _TopTapBarState();
// }
//
// class _TopTapBarState extends State<TopTapBar> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('meals'),
//           bottom: TabBar(tabs: [
//             Tab(icon: Icon(Icons.category),text: 'Category',),
//             Tab(icon: Icon(Icons.star),text: 'Fav',)
//           ]),
//         ),
//         body: TabBarView(children: [
//           CategoryScreen(),
//           FavoritesScreen(_fav),
//         ]),
//       ),
//     );
//   }
// }
