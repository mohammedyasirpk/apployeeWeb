// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables
import 'package:apployee/screens/dashboard_screen.dart';
import 'package:apployee/screens/livefeed_screen.dart';
import 'package:apployee/screens/screenshort_screen.dart';
import 'package:apployee/screens/widgets_of_apployee/analyze_tile.dart';
import 'package:apployee/screens/widgets_of_apployee/imageApploye.dart';
import 'package:apployee/screens/widgets_of_apployee/listtile.dart';
import 'package:apployee/screens/widgets_of_apployee/main_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class firstHome extends StatefulWidget {
  const firstHome({Key? key}) : super(key: key);

  @override
  State<firstHome> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<firstHome> {
  int selectedValue = 0;
  Widget selectScreen = DashboardScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                SingleChildScrollView(
                  child: Container(
                    width: 240,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(right: BorderSide(color: Colors.grey)),
                    ),
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: ApployeImageWidget()),
                        Padding(
                          padding: const EdgeInsets.only(right: 130, top: 30),
                          child: MainText(title: "Analyze")
                        ),
                        AnalyzeTiles(
                            icon: Icons.safety_check,
                            title: "Dashboraddsfd"),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: ExpansionTile(
                            collapsedBackgroundColor: Colors.white,
                            title: Row(
                              children: [
                                Icon(
                                  Icons.track_changes_sharp,
                                  size: 16,
                                ),
                                Text(
                                  '  Remote Track',
                                  style: GoogleFonts.poppins(fontSize: 13),
                                ),
                              ],
                            ),
                            children: [
                              Column(
                                children: [
                                  Container(
                                    // Placeholder content for ExpansionTile
                                    height: 50,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          // ListTileWidget(
                                          //     iconText: "s",
                                          //     boxShape: BoxShape.circle, text: 'dfd',),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                selectScreen = ScreenShort();
                                              });
                                            },
                                            child: Text(
                                              'Screen Shorts',
                                              style: GoogleFonts.poppins(),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // Placeholder content for ExpansionTile
                                    height: 50,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 18,
                                            width: 18,
                                            child: Center(
                                              child: Text(
                                                'A',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                shape: BoxShape.circle),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Apps',
                                            style: GoogleFonts.poppins(),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // Placeholder content for ExpansionTile
                                    height: 50,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 18,
                                            width: 18,
                                            child: Center(
                                              child: Text(
                                                'U',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                shape: BoxShape.circle),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'URLs',
                                            style: GoogleFonts.poppins(),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: ExpansionTile(
                            collapsedBackgroundColor: Colors.white,
                            title: Row(
                              children: [
                                Icon(
                                  Icons.pie_chart,
                                  size: 16,
                                ),
                                Text(
                                  '  Timesheets',
                                  style: GoogleFonts.poppins(fontSize: 13),
                                ),
                              ],
                            ),
                            children: [
                              Column(
                                children: [
                                  Container(
                                    // Placeholder content for ExpansionTile
                                    height: 50,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 18,
                                            width: 18,
                                            child: Center(
                                              child: Text(
                                                'D',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                shape: BoxShape.circle),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Dialy',
                                            style: GoogleFonts.poppins(),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // Placeholder content for ExpansionTile
                                    height: 50,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 18,
                                            width: 18,
                                            child: Center(
                                              child: Text(
                                                'W',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                shape: BoxShape.circle),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Weekly',
                                            style: GoogleFonts.poppins(),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // Placeholder content for ExpansionTile
                                    height: 50,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 18,
                                            width: 18,
                                            child: Center(
                                              child: Text(
                                                'B',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                shape: BoxShape.circle),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Bi-Weekly',
                                            style: GoogleFonts.poppins(),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // Placeholder content for ExpansionTile
                                    height: 50,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 18,
                                            width: 18,
                                            child: Center(
                                              child: Text(
                                                'M',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                shape: BoxShape.circle),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Monthly',
                                            style: GoogleFonts.poppins(),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // Placeholder content for ExpansionTile
                                    height: 50,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 18,
                                            width: 18,
                                            child: Center(
                                              child: Text(
                                                'C',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                shape: BoxShape.circle),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Custom',
                                            style: GoogleFonts.poppins(),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // Placeholder content for ExpansionTile
                                    height: 50,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 18,
                                            width: 18,
                                            child: Center(
                                              child: Text(
                                                'A',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                shape: BoxShape.circle),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Approval',
                                            style: GoogleFonts.poppins(),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // Placeholder content for ExpansionTile
                                    height: 50,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 18,
                                            width: 18,
                                            child: Center(
                                              child: Text(
                                                'W',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                shape: BoxShape.circle),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Work Notes',
                                            style: GoogleFonts.poppins(),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // Placeholder content for ExpansionTile
                                    height: 50,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 18,
                                            width: 18,
                                            child: Center(
                                              child: Text(
                                                'R',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                shape: BoxShape.circle),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Reports',
                                            style: GoogleFonts.poppins(),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: ExpansionTile(
                            collapsedBackgroundColor: Colors.white,
                            title: Row(
                              children: [
                                Icon(
                                  Icons.report_problem,
                                  size: 16,
                                ),
                                Text(
                                  '  Report',
                                  style: GoogleFonts.poppins(fontSize: 13),
                                ),
                              ],
                            ),
                            children: [
                              Column(
                                children: [
                                  Container(
                                    // Placeholder content for ExpansionTile
                                    height: 50,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 18,
                                            width: 18,
                                            child: Center(
                                              child: Text(
                                                'T',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                shape: BoxShape.circle),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Time And Activity',
                                            style: GoogleFonts.poppins(),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // Placeholder content for ExpansionTile
                                    height: 50,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 18,
                                            width: 18,
                                            child: Center(
                                              child: Text(
                                                'M',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                shape: BoxShape.circle),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Manual Time',
                                            style: GoogleFonts.poppins(),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // Placeholder content for ExpansionTile
                                    height: 50,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 18,
                                            width: 18,
                                            child: Center(
                                              child: Text(
                                                'A',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                shape: BoxShape.circle),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Apps & URLs Usage',
                                            style: GoogleFonts.poppins(),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.only(right: 135, top: 10),
                          child: Text(
                            'Manage',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        // buildContainer('Tasks', Icons.task_alt_rounded),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: ExpansionTile(
                            collapsedBackgroundColor: Colors.white,
                            title: Row(
                              children: [
                                Icon(
                                  Icons.person_3_outlined,
                                  size: 16,
                                ),
                                Text(
                                  'Attendance',
                                  style: GoogleFonts.poppins(fontSize: 13),
                                ),
                              ],
                            ),
                            children: [
                              Column(
                                children: [
                                  Container(
                                    // Placeholder content for ExpansionTile
                                    height: 50,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 18,
                                            width: 18,
                                            child: Center(
                                              child: Text(
                                                'C',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                shape: BoxShape.circle),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Clock In/Out',
                                            style: GoogleFonts.poppins(),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // Placeholder content for ExpansionTile
                                    height: 50,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 18,
                                            width: 18,
                                            child: Center(
                                              child: Text(
                                                'L',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                shape: BoxShape.circle),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Leave',
                                            style: GoogleFonts.poppins(),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: ExpansionTile(
                            collapsedBackgroundColor: Colors.white,
                            title: Row(
                              children: [
                                Icon(
                                  Icons.wrong_location_sharp,
                                  size: 16,
                                ),
                                Text(
                                  'Field Service',
                                  style: GoogleFonts.poppins(fontSize: 13),
                                ),
                              ],
                            ),
                            children: [
                              Column(
                                children: [
                                  Container(
                                    // Placeholder content for ExpansionTile
                                    height: 50,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 18,
                                            width: 18,
                                            child: Center(
                                              child: Text(
                                                'R',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                shape: BoxShape.circle),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Route Map',
                                            style: GoogleFonts.poppins(),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // Placeholder content for ExpansionTile
                                    height: 50,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 18,
                                            width: 18,
                                            child: Center(
                                              child: Text(
                                                'J',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                shape: BoxShape.circle),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Job Sites',
                                            style: GoogleFonts.poppins(),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // Placeholder content for ExpansionTile
                                    height: 50,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 18,
                                            width: 18,
                                            child: Center(
                                              child: Text(
                                                'G',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                shape: BoxShape.circle),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Geofense Clock In/Out',
                                            style: GoogleFonts.poppins(),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        // buildContainer('Projects', Icons.work_outline_outlined),
                        // buildContainer('Invoice', Icons.voice_chat),
                        // buildContainer('Clients', Icons.person),
                        // Divider(),
                        // buildContainer('Teams', Icons.group),
                        // buildContainer('Members', Icons.group_add_outlined),
                        // buildContainer('Payroll', Icons.paypal_rounded),
                        // buildContainer(
                        //     'Integrations', Icons.integration_instructions),
                        // buildContainer('Organizations', Icons.crop_original),
                        // buildContainer('Settings', Icons.settings),
                        Divider(),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: double.infinity,
                  width: 1295,
                  child: selectScreen,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
