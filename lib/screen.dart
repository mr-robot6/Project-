import 'package:flutter/material.dart';

import './home.dart';
import '2by4.dart';
import './3by4.dart';
import './4by5.dart';
import './6by5.dart';

class HomePiage extends StatefulWidget {
  @override
  State<HomePiage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePiage> {
  var myInitialItem = '2 * 3';
  var myFirstItem = 'Easy';
  List<String> patterns = ['2 * 3', '2 * 4', '3 * 4', '4 * 5', '6 * 5'];
  List<String> level = ['Easy', 'Medium', 'Hard'];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/neon.jpg'),
            fit: BoxFit.cover,
            //colorFilter: ColorFilter.mode(
            //Colors.black.withOpacity(0.8),
            //BlendMode.dstATop,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Text(
                'Six Bits',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Inter',
                    fontSize: 36,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'TRACK TWIN',
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Inter',
                    fontSize: 16,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                width: 350,
                height: 450,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 100, left: 20),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              'Select Pattern',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Inter',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 30,
                            margin: EdgeInsets.only(
                              left: 80,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: DropdownButton(
                              isExpanded: true,
                              dropdownColor: Colors.blue,
                              value: myInitialItem,
                              items: patterns.map((items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 0),
                                      child: Text(
                                        items,
                                        style: const TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (value) {
                                myInitialItem = value.toString();
                                setState(() {});
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Complexity Level',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Inter',
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 100,
                            height: 30,
                            margin: EdgeInsets.only(
                              left: 60,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: DropdownButton(
                              isExpanded: true,
                              underline: SizedBox(),
                              dropdownColor: Colors.blue,
                              value: myFirstItem,
                              items: level.map((items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 0),
                                      child: Text(
                                        items,
                                        style: const TextStyle(
                                          letterSpacing: 0.0,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (value) {
                                myFirstItem = value.toString();
                                print(value);
                                setState(() {});
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: RaisedButton(
                                color: Colors.lightGreen,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                onPressed: () {
                                  if (myInitialItem == '2 * 3') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage(
                                                title: 'text',
                                                label: myInitialItem,
                                              )),
                                    );
                                  } else if (myInitialItem == '2 * 4') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => TwoByFour(
                                                title: 'text',
                                                label: myInitialItem,
                                              )),
                                    );
                                  } else if (myInitialItem == '3 * 4') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ThreeByFour(
                                                title: 'text',
                                                label: myInitialItem,
                                              )),
                                    );
                                  } else if (myInitialItem == '6 * 5') {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SixByFive(
                                                title: 'text',
                                                label: myInitialItem,
                                              )),
                                    );
                                  } else {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => FourByFive(
                                                title: 'text',
                                                label: myInitialItem,
                                              )),
                                    );
                                  }
                                },
                                child: Text(
                                  'Start',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
