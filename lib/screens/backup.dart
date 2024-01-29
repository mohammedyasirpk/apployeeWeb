// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables
import 'package:apployee/login/data/authrepo.dart';
import 'package:apployee/login/widget/signin_container.dart';
import 'package:apployee/screens/newdarboard.dart';
import 'package:apployee/screens/newlive.dart';
import 'package:apployee/screens/widgets_of_apployee/secend_expansion.dart';
import 'package:flutter/material.dart';
import 'package:apployee/screens/expansionTile.dart';
import 'package:apployee/screens/widgets_of_apployee/analyze_tile.dart';
import 'package:apployee/screens/widgets_of_apployee/imageApploye.dart';
import 'package:apployee/screens/widgets_of_apployee/main_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedValue = 0;
  late Widget selectScreen;

  final pages = [MyDashBoard(), LiveSection()];

  @override
  void initState() {
    super.initState();
    selectScreen = pages[selectedValue];
  }

  void updateSelectedScreen(int index) {
    setState(() {
      selectedValue = index;
      selectScreen = pages[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Left side
          SingleChildScrollView(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ApployeImageWidget(),
                MainText(title: "Analyze"),
                GestureDetector(
                  onTap: () {
                    updateSelectedScreen(0); // Index of Dashboard
                  },
                  child: AnalyzeTiles(
                    icon: Icons.tv_outlined,
                    title: "DashBoard",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    updateSelectedScreen(1);
                  },
                  child: AnalyzeTiles(
                    icon: Icons.tv_outlined,
                    title: "Live Feed",
                  ),
                ),
                Divider(),
                SizedBox(
                  width: 300,
                  child: ExpansionTileWidget(
                    ontap1: () {},
                    ontap2: () {},
                    ontap3: () {},
                    mainTitle: "Remote track",
                    iconsText1: "S",
                    listTileText1: "Screen Shots",
                    iconsText2: "A",
                    iconsText3: "U",
                    listTileText2: "Apps",
                    listTileText3: "URLS",
                  ),
                ),
                Divider(),
                SizedBox(
                  width: 300,
                  child: ExpansionTileWidget(
                    ontap1: () {},
                    ontap2: () {},
                    ontap3: () {},
                    mainTitle: "Time Sheets",
                    iconsText1: "D",
                    listTileText1: "Daily",
                    iconsText2: "W",
                    iconsText3: "M",
                    listTileText2: "Weekly",
                    listTileText3: "Monthly",
                  ),
                ),
                Divider(),
                SizedBox(
                  width: 300,
                  child: ExpansionTileWidget(
                    ontap1: () {},
                    ontap2: () {},
                    ontap3: () {},
                    mainTitle: "Report",
                    iconsText1: "T",
                    listTileText1: "Time And Activity",
                    iconsText2: "M",
                    iconsText3: "A",
                    listTileText2: "Manual Time",
                    listTileText3: "Apps and Url",
                  ),
                ),
                MainText(title: "Manage"),
                Divider(),
                SizedBox(
                  width: 300,
                  child: ExpansionSecond(
                    ontap1: () {},
                    ontap2: () {},
                    mainTitle: "Attendance",
                    iconsText1: "C",
                    listTileText1: "ClockIN/ClockOUT",
                    iconsText2: "L",
                    listTileText2: "Leave",
                  ),
                ),
                Divider(),
                SizedBox(
                  width: 300,
                  child: ExpansionTileWidget(
                    ontap1: () {},
                    ontap2: () {},
                    ontap3: () {},
                    mainTitle: "Field Service",
                    iconsText1: "R",
                    listTileText1: "Route Map",
                    iconsText2: "J",
                    iconsText3: "G",
                    listTileText2: "Job site",
                    listTileText3: "Geofence ClockIn/ClockOut",
                  ),
                ),
                 Divider(),
                SizedBox(
                  width: 300,
                  child: ExpansionSecond(
                    ontap1: () {
                      AuthRepo.instance.signout();
                      circleBool.value = true;
                    },
                    ontap2: () {},
                    mainTitle: "Profile",
                    iconsText1: "S",
                    listTileText1: "SignOut",
                    iconsText2: "P",
                    listTileText2: "Profile Page",
                  ),
                )
              ],
            ),
          ),

          // Right side
          Expanded(child: selectScreen),
        ],
      ),
    );
  }
}
