import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  bool check = false;
  bool checkM = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(
                'assets/img.jpeg',
              ),
            ),
          )
        ],
        elevation: 0.0,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              color: Colors.blueAccent,
              child: Row(
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Welcome back,\n',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 24.0),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Mubarak Shuaib',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(32.0),
                  topRight: const Radius.circular(32.0),
                ),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Icon(
                      Icons.add_alarm,
                      color: Colors.amber,
                      size: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: 'Task ',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 24.0),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'List',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                            ],
                          ),
                        ),
                        Icon(Icons.done)
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: (32.0), horizontal: (24.0)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Daily Task'),
                                      SizedBox(
                                        width: 24.0,
                                      ),
                                      Icon(
                                        Icons.add,
                                        color: Colors.blueAccent,
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.blueAccent,
                                    thickness: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: check,
                                        onChanged: (bool cb) {
                                          setState(() {
                                            check = cb;
                                            print(check);
                                          });
                                        },
                                      ),
                                      Text('Reading')
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: check,
                                        onChanged: (bool cb) {
                                          setState(() {
                                            check = cb;
                                            print(check);
                                          });
                                        },
                                      ),
                                      Text('Morning Chores'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: check,
                                        onChanged: (bool cb) {
                                          setState(() {
                                            check = cb;
                                            print(check);
                                          });
                                        },
                                      ),
                                      Text('Go to The market')
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: (32.0), horizontal: (24.0)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Daily Task',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 24.0,
                                      ),
                                      Icon(Icons.add, color: Colors.white),
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.blueAccent,
                                    thickness: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        activeColor: Colors.white,
                                        checkColor: Colors.blueAccent,
                                        value: check,
                                        onChanged: (bool cb) {
                                          setState(() {
                                            check = cb;
                                            print(check);
                                          });
                                        },
                                      ),
                                      Text('Reading',
                                          style: TextStyle(color: Colors.white))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        activeColor: Colors.white,
                                        checkColor: Colors.blueAccent,
                                        value: check,
                                        onChanged: (bool cb) {
                                          setState(() {
                                            check = cb;
                                            print(check);
                                          });
                                        },
                                      ),
                                      Text('Morning Chores',
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        activeColor: Colors.white,
                                        checkColor: Colors.blueAccent,
                                        value: check,
                                        onChanged: (bool cb) {
                                          setState(() {
                                            check = cb;
                                            print(check);
                                          });
                                        },
                                      ),
                                      Text('Go to The market',
                                          style: TextStyle(color: Colors.white))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            color: Colors.blueAccent,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: 'Missed tasks ',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 24.0),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'List',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                            ],
                          ),
                        ),
                        Icon(Icons.done),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: (32.0), horizontal: (24.0)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Daily Task'),
                                      SizedBox(
                                        width: 24.0,
                                      ),
                                      Icon(
                                        Icons.add,
                                        color: Colors.blueAccent,
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.blueAccent,
                                    thickness: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: check,
                                        onChanged: (bool cb) {
                                          setState(() {
                                            check = cb;
                                            print(check);
                                          });
                                        },
                                      ),
                                      Text('Reading')
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: check,
                                        onChanged: (bool cb) {
                                          setState(() {
                                            check = cb;
                                            print(check);
                                          });
                                        },
                                      ),
                                      Text('Morning Chores'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: check,
                                        onChanged: (bool cb) {
                                          setState(() {
                                            check = cb;
                                            print(check);
                                          });
                                        },
                                      ),
                                      Text('Go to The market')
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: (32.0), horizontal: (24.0)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Daily Task',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 24.0,
                                      ),
                                      Icon(Icons.add, color: Colors.white),
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.blueAccent,
                                    thickness: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        activeColor: Colors.white,
                                        checkColor: Colors.blueAccent,
                                        value: checkM,
                                        onChanged: (bool cb) {
                                          setState(() {
                                            checkM = cb;
                                            print(checkM);
                                          });
                                        },
                                      ),
                                      Text('Reading',
                                          style: TextStyle(color: Colors.white))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        activeColor: Colors.white,
                                        checkColor: Colors.blueAccent,
                                        value: checkM,
                                        onChanged: (bool cb) {
                                          setState(() {
                                            checkM = cb;
                                            print(checkM);
                                          });
                                        },
                                      ),
                                      Text('Morning Chores',
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        activeColor: Colors.white,
                                        checkColor: Colors.blueAccent,
                                        value: checkM,
                                        onChanged: (bool cb) {
                                          setState(() {
                                            checkM = cb;
                                            print(checkM);
                                          });
                                        },
                                      ),
                                      Text('Go to The market',
                                          style: TextStyle(color: Colors.white))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            color: Colors.blueAccent,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
