// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:task_manage/reusable_card.dart';
// import 'package:task_manage/today_task.dart';
//
// class Calendar extends StatefulWidget {
//   @override
//   _CalendarState createState() => _CalendarState();
// }
//
// class _CalendarState extends State<Calendar> {
//   int _currentIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     final colorScheme = Theme.of(context).colorScheme;
//     final textTheme = Theme.of(context).textTheme;
//
//     return Scaffold(
//       backgroundColor: Color(0xFFFFFFFF),
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//               height: 29,
//             ),
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: Text(
//                     'Calendar',
//                     style: TextStyle(
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black87,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.fromLTRB(145, 0, 0, 0),
//                   child: Container(
//                     height: 35,
//                     width: 35,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       color: Color(0xffF2CAD8),
//                     ),
//                     child: Image.network(
//                       'https://images.unsplash.com/photo-1503104834685-7205e8607eb9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8ZmVtYWxlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 35,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Container(
//                 height: 70,
//                 color: Colors.transparent,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: [
//                     ReusableCard(
//
//                       onPress: () {
//                         setState(() {});
//                       },
//                     ),
//                     SizedBox(
//                       width: 15,
//                     ),
//                     ReusableCard(
//
//                     ),
//                     SizedBox(
//                       width: 15,
//                     ),
//                     ReusableCard(
//
//                     ),
//                     SizedBox(
//                       width: 15,
//                     ),
//                     ReusableCard(
//
//                     ),
//                     SizedBox(
//                       width: 15,
//                     ),
//                     ReusableCard(
//                       ),
//
//                     SizedBox(
//                       width: 15,
//                     ),
//                     ReusableCard(
//
//                     ),
//                     SizedBox(
//                       width: 15,
//                     ),
//                     ReusableCard(
//
//                     ),
//                     SizedBox(
//                       width: 15,
//                     ),
//                     ReusableCard(
//
//                     ),
//                     SizedBox(
//                       width: 15,
//                     ),
//                     ReusableCard(
//
//                     ),
//                     SizedBox(
//                       width: 15,
//                     ),
//                     ReusableCard(
//
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 28,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Text(
//                 'MY TASK',
//                 style: TextStyle(
//                   fontSize: 23,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black87,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Expanded(
//               child: ListView(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: Container(
//                       height: 90,
//                       width: 310,
//                       decoration: BoxDecoration(
//                         color: Color(0xffF3F1FE),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Column(
//                         children: [
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 height: 46,
//                                 width: 5,
//                                 decoration: BoxDecoration(
//                                   color: Color(0xff8C76FE),
//                                   borderRadius: BorderRadius.only(
//                                     topLeft: Radius.circular(10.0),
//                                     topRight: Radius.circular(10),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 15,
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 10),
//                                 child: Text(
//                                   'Morning Gym Time',
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 84,
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 10),
//                                 child: Icon(
//                                   Icons.edit,
//                                   color: Color(0xffA397DD),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 height: 44,
//                                 width: 5,
//                                 decoration: BoxDecoration(
//                                   color: Color(0xff8C76FE),
//                                   borderRadius: BorderRadius.only(
//                                     bottomLeft: Radius.circular(10.0),
//                                     bottomRight: Radius.circular(10),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 15,
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 10),
//                                 child: Text(
//                                   '08 - 09 AM',
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     color: Color(0xff828189),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 180,
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 10),
//                                 child: Icon(
//                                   Icons.delete,
//                                   color: Color(0xffA397DD),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: Container(
//                       height: 90,
//                       width: 310,
//                       decoration: BoxDecoration(
//                         color: Color(0xffFFF3E7),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Column(
//                         children: [
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 height: 46,
//                                 width: 5,
//                                 decoration: BoxDecoration(
//                                   color: Color(0xffFFAA49),
//                                   borderRadius: BorderRadius.only(
//                                     topLeft: Radius.circular(10.0),
//                                     topRight: Radius.circular(10),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 15,
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 10),
//                                 child: Text(
//                                   'Break fast Time',
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 113,
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 10),
//                                 child: Icon(
//                                   Icons.delete,
//                                   color: Color(0xffFFAA49),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 height: 44,
//                                 width: 5,
//                                 decoration: BoxDecoration(
//                                   color: Color(0xffFFAA49),
//                                   borderRadius: BorderRadius.only(
//                                     bottomLeft: Radius.circular(10.0),
//                                     bottomRight: Radius.circular(10),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 15,
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 10),
//                                 child: Text(
//                                   '09:30 - 10 AM',
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     color: Color(0xff828189),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 158,
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 10),
//                                 child: Icon(
//                                   Icons.delete,
//                                   color: Color(0xffFFAA49),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: Container(
//                       height: 90,
//                       width: 310,
//                       decoration: BoxDecoration(
//                         color: Color(0xffF3F1FE),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Column(
//                         children: [
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 height: 46,
//                                 width: 5,
//                                 decoration: BoxDecoration(
//                                   color: Color(0xff8C76FE),
//                                   borderRadius: BorderRadius.only(
//                                     topLeft: Radius.circular(10.0),
//                                     topRight: Radius.circular(10),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 15,
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 10),
//                                 child: Text(
//                                   'Office meeting',
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 120,
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 10),
//                                 child: Icon(
//                                   Icons.edit,
//                                   color: Color(0xffA397DD),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 height: 44,
//                                 width: 5,
//                                 decoration: BoxDecoration(
//                                   color: Color(0xff8C76FE),
//                                   borderRadius: BorderRadius.only(
//                                     bottomLeft: Radius.circular(10.0),
//                                     bottomRight: Radius.circular(10),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 15,
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 10),
//                                 child: Text(
//                                   '11 - 01 PM',
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     color: Color(0xff828189),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 178,
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 10),
//                                 child: Icon(
//                                   Icons.delete,
//                                   color: Color(0xffA397DD),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: Container(
//                       height: 90,
//                       width: 310,
//                       decoration: BoxDecoration(
//                         color: Color(0xffFFF3E7),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Column(
//                         children: [
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 height: 46,
//                                 width: 5,
//                                 decoration: BoxDecoration(
//                                   color: Color(0xffFFAA49),
//                                   borderRadius: BorderRadius.only(
//                                     topLeft: Radius.circular(10.0),
//                                     topRight: Radius.circular(10),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 15,
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 10),
//                                 child: Text(
//                                   'Launch Time',
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 138,
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 10),
//                                 child: Icon(
//                                   Icons.edit,
//                                   color: Color(0xffFFAA49),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 height: 44,
//                                 width: 5,
//                                 decoration: BoxDecoration(
//                                   color: Color(0xffFFAA49),
//                                   borderRadius: BorderRadius.only(
//                                     bottomLeft: Radius.circular(10.0),
//                                     bottomRight: Radius.circular(10),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 15,
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 10),
//                                 child: Text(
//                                   '7:30 - 8 PM',
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     color: Color(0xff828189),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 175,
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 10),
//                                 child: Icon(
//                                   Icons.delete,
//                                   color: Color(0xffFFAA49),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: Container(
//                       height: 90,
//                       width: 310,
//                       decoration: BoxDecoration(
//                         color: Color(0xffF3F1FE),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Column(
//                         children: [
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 height: 46,
//                                 width: 5,
//                                 decoration: BoxDecoration(
//                                   color: Color(0xff8C76FE),
//                                   borderRadius: BorderRadius.only(
//                                     topLeft: Radius.circular(10.0),
//                                     topRight: Radius.circular(10),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 15,
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 10),
//                                 child: Text(
//                                   'Morning Gym Time',
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 84,
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 10),
//                                 child: Icon(
//                                   Icons.edit,
//                                   color: Color(0xffA397DD),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 height: 44,
//                                 width: 5,
//                                 decoration: BoxDecoration(
//                                   color: Color(0xff8C76FE),
//                                   borderRadius: BorderRadius.only(
//                                     bottomLeft: Radius.circular(10.0),
//                                     bottomRight: Radius.circular(10),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 15,
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 10),
//                                 child: Text(
//                                   '08 - 09 AM',
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     color: Color(0xff828189),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 180,
//                               ),
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 10),
//                                 child: Icon(
//                                   Icons.delete,
//                                   color: Color(0xffA397DD),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: Container(
//         height: 60.0,
//         width: 60.0,
//         child: FittedBox(
//           child: FloatingActionButton(
//             backgroundColor: Color(0xffFDAA45),
//             onPressed: () {
//               showModalBottomSheet(
//                 context: context,
//                 builder: _bottomsheet,
//                 isDismissible: false,
//                 enableDrag: false,
//                 isScrollControlled: true,
//               );
//             },
//             child: Icon(
//               Icons.add,
//               size: 40,
//               color: Colors.white,
//             ),
//             // elevation: 5.0,
//           ),
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomNavigationBar(
//         elevation: 20,
//         onTap: (index) {
//           _currentIndex = index;
//           setState(() => _currentIndex = index);
//           if (index == 1) {
//             Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => TodayTask()));
//           }
//         },
//         type: BottomNavigationBarType.fixed,
//         currentIndex: _currentIndex,
//         backgroundColor: colorScheme.surface,
//         selectedItemColor: colorScheme.onSurface,
//         unselectedItemColor: colorScheme.onSurface.withOpacity(.60),
//         selectedLabelStyle: textTheme.caption,
//         unselectedLabelStyle: textTheme.caption,
//         items: [
//           BottomNavigationBarItem(
//             title: Text(''),
//             icon: Icon(
//               Icons.home,
//               size: 29,
//             ),
//           ),
//           BottomNavigationBarItem(
//             title: Text(''),
//             icon: Icon(Icons.calendar_today),
//           ),
//           BottomNavigationBarItem(
//             title: Text(''),
//             icon: Icon(Icons.watch_later),
//           ),
//           BottomNavigationBarItem(
//             title: Text(''),
//             icon: Icon(Icons.account_circle),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _bottomsheet(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       height: MediaQuery.of(context).size.height * 0.6,
//       child: Scaffold(
//         resizeToAvoidBottomInset: false,
//         primary: false,
//         body: ListView(
//           physics: NeverScrollableScrollPhysics(),
//           children: [
//             SizedBox(
//               height: 20,
//             ),
//             Text(
//               'ADD TASK',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25),
//               child: Container(
//                 height: 50,
//                 width: 310,
//                 decoration: BoxDecoration(
//                   color: Color(0xffF3F1FE),
//                 ),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.date_range),
//                     border: OutlineInputBorder(),
//                     labelText: 'DATE  00/MM/YYYY',
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 40,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25),
//               child: Container(
//                 height: 50,
//                 width: 310,
//                 decoration: BoxDecoration(
//                   color: Color(0xffFFF3E7),
//                 ),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.edit_location),
//                     border: OutlineInputBorder(),
//                     labelText: 'TASK NAME',
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 40,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25),
//               child: Container(
//                 height: 50,
//                 width: 310,
//                 decoration: BoxDecoration(
//                   color: Color(0xffF3F1FE),
//                 ),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.timer),
//                     border: OutlineInputBorder(),
//                     labelText: 'TIME  00:00',
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 40,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25),
//               child: Container(
//                 height: 50,
//                 width: 230,
//                 child: RaisedButton(
//                     elevation: 5,
//                     color: Color(0xffFDAA45),
//                     splashColor: Colors.yellow[200],
//                     animationDuration: Duration(seconds: 5),
//                     child: new Text("SAVE TASK"),
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => Calendar()),
//                       );
//                     }),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_manage/reusable_card.dart';
import 'package:task_manage/today_task.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  int _currentIndex = 0;
  SharedPreferences pref;
  List<Task> taskList;
  TextEditingController dateController;
  TextEditingController taskNameController;
  TextEditingController timeController;
  String date;
  String taskName;
  String time;

  @override
  void initState() {
    super.initState();
    taskList = [];
    initializePreference();

    dateController = TextEditingController();
    taskNameController = TextEditingController();
    timeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    DatePickerController _controller = DatePickerController();
    DateTime _selectedValue = DateTime.now();

    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 29,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Calendar',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(145, 0, 0, 0),
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffF2CAD8),
                    ),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1503104834685-7205e8607eb9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8ZmVtYWxlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                // height: 70,
                color: Colors.transparent,
                // child: ListView(
                //   scrollDirection: Axis.horizontal,
                //   children: [
                //     ReusableCard(
                //       date: 15,
                //       month: "Feb",
                //       onPress: () {
                //         setState(() {
                //           bgColor = Colors.amber;
                //           textColor = Colors.white;
                //         });
                //       },
                //     ),
                //     SizedBox(
                //       width: 15,
                //     ),
                //     ReusableCard(
                //       date: 15,
                //       month: "Feb",
                //       onPress: () {
                //         setState(() {
                //           bgColor = Colors.amber;
                //           textColor = Colors.white;
                //         });
                //       },
                //     ),
                //     SizedBox(
                //       width: 15,
                //     ),
                //   ],
                // ),
                child: DatePicker(
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Colors.amber,
                  selectedTextColor: Colors.white,
                  onDateChange: (date) {
                    // New date selected
                    setState(() {
                      _selectedValue = date;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'MY TASK',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 90,
                      width: 310,
                      decoration: BoxDecoration(
                        color: Color(0xffF3F1FE),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 46,
                                width: 5,
                                decoration: BoxDecoration(
                                  color: Color(0xff8C76FE),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  'Morning Gym Time',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 84,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Icon(
                                  Icons.edit,
                                  color: Color(0xffA397DD),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 44,
                                width: 5,
                                decoration: BoxDecoration(
                                  color: Color(0xff8C76FE),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  '08 - 09 AM',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff828189),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 180,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Icon(
                                  Icons.delete,
                                  color: Color(0xffA397DD),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 90,
                      width: 310,
                      decoration: BoxDecoration(
                        color: Color(0xffFFF3E7),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 46,
                                width: 5,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFAA49),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  'Break fast Time',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 113,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Icon(
                                  Icons.delete,
                                  color: Color(0xffFFAA49),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 44,
                                width: 5,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFAA49),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  '09:30 - 10 AM',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff828189),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 158,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Icon(
                                  Icons.delete,
                                  color: Color(0xffFFAA49),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 90,
                      width: 310,
                      decoration: BoxDecoration(
                        color: Color(0xffF3F1FE),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 46,
                                width: 5,
                                decoration: BoxDecoration(
                                  color: Color(0xff8C76FE),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  'Office meeting',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 120,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Icon(
                                  Icons.edit,
                                  color: Color(0xffA397DD),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 44,
                                width: 5,
                                decoration: BoxDecoration(
                                  color: Color(0xff8C76FE),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  '11 - 01 PM',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff828189),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 178,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Icon(
                                  Icons.delete,
                                  color: Color(0xffA397DD),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 90,
                      width: 310,
                      decoration: BoxDecoration(
                        color: Color(0xffFFF3E7),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 46,
                                width: 5,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFAA49),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  'Launch Time',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 138,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Icon(
                                  Icons.edit,
                                  color: Color(0xffFFAA49),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 44,
                                width: 5,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFAA49),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  '7:30 - 8 PM',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff828189),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 175,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Icon(
                                  Icons.delete,
                                  color: Color(0xffFFAA49),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 90,
                      width: 310,
                      decoration: BoxDecoration(
                        color: Color(0xffF3F1FE),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 46,
                                width: 5,
                                decoration: BoxDecoration(
                                  color: Color(0xff8C76FE),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  'Morning Gym Time',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 84,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Icon(
                                  Icons.edit,
                                  color: Color(0xffA397DD),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 44,
                                width: 5,
                                decoration: BoxDecoration(
                                  color: Color(0xff8C76FE),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  '08 - 09 AM',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff828189),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 180,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Icon(
                                  Icons.delete,
                                  color: Color(0xffA397DD),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 60.0,
        width: 60.0,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Color(0xffFDAA45),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: _bottomsheet,
                  isDismissible: false,
                  enableDrag: false,
                  isScrollControlled: true);
            },
            child: Icon(
              Icons.add,
              size: 40,
              color: Colors.white,
            ),
            // elevation: 5.0,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        onTap: (index) {
          _currentIndex = index;
          setState(() => _currentIndex = index);
          if (index == 1) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => TodayTask()));
          }
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: colorScheme.surface,
        selectedItemColor: colorScheme.onSurface,
        unselectedItemColor: colorScheme.onSurface.withOpacity(.60),
        selectedLabelStyle: textTheme.caption,
        unselectedLabelStyle: textTheme.caption,
        items: [
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(
              Icons.home,
              size: 29,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(Icons.calendar_today),
          ),
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(Icons.watch_later),
          ),
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }

  Widget _bottomsheet(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height * 0.6,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        primary: false,
        body: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'ADD TASK',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 50,
                width: 310,
                decoration: BoxDecoration(
                  color: Color(0xffF3F1FE),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.date_range),
                    border: OutlineInputBorder(),
                    labelText: 'DATE  00/MM/YYYY',
                  ),
                  onChanged: (value) => {date = value},
                  controller: dateController,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 50,
                width: 310,
                decoration: BoxDecoration(
                  color: Color(0xffFFF3E7),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.edit_location),
                    border: OutlineInputBorder(),
                    labelText: 'TASK NAME',
                  ),
                  onChanged: (value) => {taskName = value},
                  controller: taskNameController,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 50,
                width: 310,
                decoration: BoxDecoration(
                  color: Color(0xffF3F1FE),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.timer),
                    border: OutlineInputBorder(),
                    labelText: 'TIME  00:00',
                  ),
                  onChanged: (value) => {time = value},
                  controller: timeController,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 50,
                width: 230,
                child: RaisedButton(
                    elevation: 5,
                    color: Color(0xffFDAA45),
                    splashColor: Colors.yellow[200],
                    animationDuration: Duration(seconds: 5),
                    child: new Text("SAVE TASK"),
                    onPressed: () async {
                      Navigator.pop(context);
                      print("date: $date, name: $taskName, time:$time");
                      if (date.isNotEmpty &&
                          taskName.isNotEmpty &&
                          time.isNotEmpty) {
                        await _saveTask(date, taskName, time);
                      }
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void initializePreference() async {
    pref = await SharedPreferences.getInstance();
    getSaveTask();
  }

  Future<void> _saveTask(String date, String taskName, String time) async {
    await pref.setStringList(taskName, [date, time]);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Calendar()));
  }

  Future<void> _editTask(String date, String taskName, String time) async {
    await pref.setStringList(taskName, [date, time]);
  }

  Future<void> _deleteTask(String taskName) async {
    await pref.remove(taskName);
  }

  void getSaveTask() async {
    List keys = pref.getKeys().toList();
    for (int i = 0; i < keys.length; i++) {
      Task task = Task(
        taskName: keys[i],
        date: pref.getStringList(keys[i])[0],
        time: pref.getStringList(keys[i])[1],
      );
      taskList.add(task);
    }
  }
}

class Task {
  String taskName;
  String date;
  String time;

  Task({this.taskName, this.date, this.time});
}
