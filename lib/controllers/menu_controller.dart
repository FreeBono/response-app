import 'package:flutter/material.dart';

// class MenuController {
//   // late final mContext;
//   // MenuController(BuildContext context) {
//   //   this.mContext = context;
//   // }
//
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//
//   // GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;
//
//   void controlMenu() {
//     // print(_scaffoldKey);
//     // if (!_scaffoldKey.currentState!.isDrawerOpen) {
//     //   _scaffoldKey.currentState!.openDrawer();
//     // }
//     print(mContext.);
//   }
// }

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

void openDrawer() {
  scaffoldKey.currentState?.openDrawer();
}
