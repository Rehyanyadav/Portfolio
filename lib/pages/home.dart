import 'package:flutter/material.dart';

import 'package:myportfolio/constants/colors.dart';
import 'package:myportfolio/constants/size.dart';
import 'package:myportfolio/constants/skill_items.dart';

import 'package:myportfolio/widgets/drawer.dart';
import 'package:myportfolio/widgets/header.dart';

import 'package:myportfolio/widgets/headermobile.dart';
import 'package:myportfolio/widgets/main_page_desktop.dart';
import 'package:myportfolio/widgets/main_page_mobile.dart';
import 'package:myportfolio/widgets/skills_desktop.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ScaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: ScaffoldKey,
          backgroundColor: CustomColor.scaffoldbg,
          endDrawer:
              constraints.maxWidth >= KMinDesktopWidth ? null : DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
//*NAVBAR
              if (constraints.maxWidth >= KMinDesktopWidth)
                const HeaderDesktop()
              else
                HeaderMobile(
                  onmenuTap: () {
                    ScaffoldKey.currentState?.openEndDrawer();
                  },
                ),

//*MainDesktop
              if (constraints.maxWidth >= KMinDesktopWidth)
                MainDesktop()
              else
                MainMobile(),

//*Skills

              Container(
                padding: const EdgeInsets.fromLTRB(25, 20, 20, 60),
                width: screenWidth,
                color: CustomColor.bgLight1,
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'What I can do?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: CustomColor.whiteSecondary),
                    ),
                    SizedBox(
                      height: 50,
                    ),

                    //*PLATFORMS

                    SkillsDesktop()
                  ],
                ),
              ),

              //FOOTER
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
            ],
          ));
    });
  }
}
