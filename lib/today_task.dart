import 'package:flutter/material.dart';
import 'package:task_manage/calendar.dart';
import 'package:task_manage/reusable_card.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class TodayTask extends StatefulWidget {
  @override
  _TodayTaskState createState() => _TodayTaskState();
}

class _TodayTaskState extends State<TodayTask> {
  int _currentIndex = 1;

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
                Container(
                  child: PopupMenuButton(
                    itemBuilder: (BuildContext bc) => [
                      PopupMenuItem(child: Text("1111"), value: "1111"),
                      PopupMenuItem(child: Text("2222"), value: "2222"),
                      PopupMenuItem(child: Text("3333"), value: "3333"),
                    ],
                    onSelected: (route) {
                      print(route);
                      Navigator.pushNamed(context, route);
                    },
                  ),
                ),
                SizedBox(
                  width: 70,
                ),
                Text(
                  'Today Task',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 85,
                ),
                Container(
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
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                //height: 70,
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
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'February',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            '17',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '08 Task Today',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff828189),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 110,
                  ),
                  CircleAvatar(
                    radius: 25,
                    // backgroundColor: Color(0xff8C76FE),
                    child: Image.network(
                      'https://img.icons8.com/nolan/2x/ffffff/planner.png',
                      height: 35,
                      width: 35,
                      //color: Color(0xff8C76FE),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 38,
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          '08 AM',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffCABFFA),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 70,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Color(0xffF3F1FE),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Morning GYM Time',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.edit_outlined,
                                      color: Color(0xffA397DD),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '08 - 09 AM',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff828189),
                                      ),
                                    ),
                                    Icon(
                                      Icons.delete_outlined,
                                      color: Color(0xffA397DD),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          '09 AM',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFFAA49),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 70,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Color(0xffFFF3E7),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Breakfast Time',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.edit_outlined,
                                      color: Color(0xffFFAA49),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '9:30 - 10 AM',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Icon(
                                      Icons.delete_outlined,
                                      color: Color(0xffFFAA49),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          '11 PM',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffCABFFA),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 70,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Color(0xffF3F1FE),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Office Meeting',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.edit_outlined,
                                      color: Color(0xffA397DD),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '11 - 01 PM',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff828189),
                                      ),
                                    ),
                                    Icon(
                                      Icons.delete_outlined,
                                      color: Color(0xffA397DD),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          '01 PM',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFFAA49),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 70,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Color(0xffFFF3E7),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Launch Time',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.edit_outlined,
                                      color: Color(0xffFFAA49),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '01 - 02 PM',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Icon(
                                      Icons.delete_outlined,
                                      color: Color(0xffFFAA49),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          '02 PM',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffCABFFA),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 70,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Color(0xffF3F1FE),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Rest Time',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.edit_outlined,
                                      color: Color(0xffA397DD),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '02 - 03 AM',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff828189),
                                      ),
                                    ),
                                    Icon(
                                      Icons.delete_outlined,
                                      color: Color(0xffA397DD),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          '03 PM',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFFAA49),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 70,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Color(0xffFFF3E7),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Office Time',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.edit_outlined,
                                      color: Color(0xffFFAA49),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '03 - 06 PM',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Icon(
                                      Icons.delete_outlined,
                                      color: Color(0xffFFAA49),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
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
                isScrollControlled: true,
              );
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
          if (index == 0) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Calendar()));
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TodayTask()),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
