import 'package:flutter/material.dart';
import 'package:xloMobx/components/custom_drawer/custom_drawer_header.dart';

import 'page_section.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        child: Drawer(
          child: ListView(
            children: [
              CustomDrawerHeader(),
              PageSection(),
              Divider(
                color: Colors.pink[900],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
