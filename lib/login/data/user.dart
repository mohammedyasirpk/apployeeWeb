import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:intl/intl.dart';

Future<List> findUserWithMostTaskTimeLastWeek() async {

  final userList = [];
  final DateTime now = DateTime.now();
  final DateTime lastWeekStart = now.subtract(const Duration(days: 7));

  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  final String lastWeekStartDate = formatter.format(lastWeekStart);

  QuerySnapshot usersSnapshot = await FirebaseFirestore.instance.collection("Users").get();

  String userIdWithMostTaskTime = '';
  int maxTaskTime = 0;

  for (QueryDocumentSnapshot userDoc in usersSnapshot.docs) {
    Map<String, dynamic> userData = userDoc.data() as Map<String, dynamic>;
    if (userData.containsKey("taskTime")) {
      Map<String, dynamic> taskTimeData = userData["taskTime"];

      // Check if the user has task time entries for the last week
      if (taskTimeData.containsKey(lastWeekStartDate)) {
        int taskTimeLastWeek = taskTimeData[lastWeekStartDate];
        
        // Update maxTaskTime and userIdWithMostTaskTime if needed
        if (taskTimeLastWeek > maxTaskTime) {
          maxTaskTime = taskTimeLastWeek;
          userIdWithMostTaskTime = userDoc.id;
        }
      }
    }
  }


  print("User with most task time last week: $userIdWithMostTaskTime");
  print("Task time: $maxTaskTime minutes");

  userList.add(userIdWithMostTaskTime);
  userList.add(maxTaskTime);
  print(userList);
  return userList;

 
 
}

