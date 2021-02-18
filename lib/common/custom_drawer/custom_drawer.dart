import 'package:flutter/material.dart';
import 'package:xlo/common/custom_drawer/widgets/custom_header.dart';
import 'package:xlo/common/custom_drawer/widgets/icon_section.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          CustomHeader(),
          IconSection(),
          Divider(color: Colors.grey[500]),
        ],
      ),
    );
  }
}
