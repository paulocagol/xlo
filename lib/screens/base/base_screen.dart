import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xlo/blocs/drawer_bloc.dart';
import 'package:xlo/screens/home/home_screen.dart';

class BaseScreen extends StatefulWidget {
  BaseScreen({Key key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final PageController _pageController = PageController();

  DrawerBloc _drawerBloc;
  StreamSubscription _drawerSubscripiont;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final DrawerBloc drawerBloc = Provider.of<DrawerBloc>(context);
    if (drawerBloc != _drawerBloc) {
      _drawerBloc = drawerBloc;


      _drawerSubscripiont?.cancel();
      _drawerSubscripiont = _drawerBloc.outPage.listen(
        (page) {
          _pageController.jumpToPage(page);
        },
      );
    }
  }

  @override
  void dispose() {
    _drawerSubscripiont.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          HomeScreen(),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
