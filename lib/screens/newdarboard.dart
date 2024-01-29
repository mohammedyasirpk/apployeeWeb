import 'package:apployee/screens/widgets_of_apployee/dashboardwidget/allproject_container.dart';
import 'package:apployee/screens/widgets_of_apployee/dashboardwidget/firstbox.dart';
import 'package:apployee/screens/widgets_of_apployee/dashborad_last_container.dart';
import 'package:apployee/screens/widgets_of_apployee/dashbord_secondrow.dart';
import 'package:apployee/screens/widgets_of_apployee/progress_bar_container.dart';
import 'package:flutter/material.dart';

class MyDashBoard extends StatefulWidget {
  const MyDashBoard({Key? key}) : super(key: key);

  @override
  State<MyDashBoard> createState() => _MyDashBoardState();
}



class _MyDashBoardState extends State<MyDashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text(
                      "Dashboard",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width *
                          0.03, // Set height as a percentage of screen width
                      width: MediaQuery.of(context).size.width * 0.15,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.person,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "Me",
                            style: TextStyle(fontSize: 20),
                          ),
                          Expanded(
                            // Add Expanded widget here
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: 2,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.business,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("Organisation"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 17),
                  child: Container(
                    height: MediaQuery.of(context).size.width *
                        0.03, // Set height as a percentage of screen width
                    width: MediaQuery.of(context).size.width * 0.15,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(left: 10, top: 8),
                      child: const Text("date"),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                FirstBox(
                    mainTitle: " Top 5 Members Based On Time Logged",
                    imageString: 'lib/images/flagg.png'),
                SizedBox(
                  width: 30,
                ),
                FirstBox(
                    mainTitle: "Top 5 Members Based On Activity",
                    imageString: 'lib/images/flagg.png')
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.37 / 2,
                      height: MediaQuery.of(context).size.height * 0.5 / 2,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Total Hours',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    Text("0h:0m",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                const SizedBox(
                                  width: 30,
                                ),

                                // Small container
                                Container(
                                  padding:
                                      const EdgeInsets.only(top: 8, left: 5),
                                  // Set the height as needed
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Center(
                                    child: Row(
                                      children: [
                                        Icon(Icons.arrow_right),
                                        Text("00 %")
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ProgressbarContainer(date: "Mon"),
                                  ProgressbarContainer(date: "Tue"),
                                  ProgressbarContainer(date: "Wed"),
                                  ProgressbarContainer(date: "Thu"),
                                  ProgressbarContainer(date: "Fri"),
                                  ProgressbarContainer(date: "Sat"),
                                  ProgressbarContainer(date: "Sun"),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const SecoendContainer(
                        timeText: "0h:0m", persentage: "70", title: "Last week")
                  ],
                ),
                const SizedBox(
                  width: 26,
                ),
                const SecoendContainer(
                    timeText: "70 %", persentage: "70", title: "Last week"),
                const SizedBox(
                  width: 10,
                ),
                const AllProjectContainer(
                  date: "January 4,2024",
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Column(
              children: [
                Row(
                  children: [
                    LastBox(
                        mainTitle: "Activity Report",
                        imageString: "lib/images/report.png"),
                    SizedBox(
                      width: 30,
                    ),
                    LastBox(
                        mainTitle: "Top Assigned Project",
                        imageString: "lib/images/project.png")
                  ],
                ),
                  SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    LastBox(
                        mainTitle: "Ongoing Tasks",
                        imageString: "lib/images/task.png"),
                    SizedBox(
                      width: 30,
                    ),
                    LastBox(
                        mainTitle: "TimeSheet",
                        imageString: "lib/images/timesheet.png")
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
